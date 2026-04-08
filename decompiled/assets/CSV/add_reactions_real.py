#!/usr/bin/env python3
import csv, json, os, sys
from collections import defaultdict

BASE = '/home/codespace/chlab/decompiled/assets/CSV'

# Load gas targets
with open('/tmp/gas_targets.json') as f:
    gas_targets = {g['name']: g for g in json.load(f)}

# Load existing reaction names to avoid duplicates
existing_names = set()
for dbfile in ['rdb.csv', 'ordb.csv']:
    with open(os.path.join(BASE, dbfile), 'r', encoding='utf-8-sig') as f:
        reader = csv.reader(f)
        next(reader, None)
        for row in reader:
            if row:
                existing_names.add(row[0].strip())

# Build chemical database: name -> row (including formula from DName)
chems = {}
for fname in ['cdb.csv', 'cdb-free.csv']:
    with open(os.path.join(BASE, fname), 'r', encoding='utf-8-sig') as f:
        reader = csv.reader(f)
        header = next(reader)
        for row in reader:
            if row and row[0].strip():
                name = row[0].strip()
                chems[name] = {
                    'row': row,
                    'formula': row[6].strip() if len(row) > 6 else name,
                    'type': row[1].strip().lower()
                }

# Reaction templates indexed by element presence or class
def add_reaction(gas_name, reactants, products, modulus, speed, temps, effects, rek, color, cata=''):
    # Check uniqueness
    base_name = f"{gas_name}_{reactants[0] if len(reactants)<=2 else reactants[1]}"
    name = base_name
    suffix = 1
    while name in existing_names:
        suffix += 1
        name = f"{base_name}_{suffix}"
    existing_names.add(name)
    # Build states string for reactants: "1-2-3..."
    states = '-'.join(str(i) for i in range(1, len(reactants)+1))
    # Build rows
    rdb_row = [name, f"{speed:.2f}".rstrip('0').rstrip('.'), '-'.join(reactants), '-'.join(products),
              '-'.join(str(m) for m in modulus), temps, states, effects, str(rek), color, '']
    ordb_row = [name, f"{speed:.2f}".rstrip('0').rstrip('.'), '-'.join(reactants), '-'.join(products),
              '-'.join(str(m) for m in modulus), temps, states, effects, rek_str, color, cata]
    return rdb_row, ordb_row

# We'll accumulate new rows
new_rdb = []
new_ordb = []

# Helper to format numbers
def fmt(x):
    s = f"{x:.3f}".rstrip('0').rstrip('.')
    return s if s else '0'

# Define generic reaction templates with placeholder gas position
# For each gas class, we'll generate appropriate reactions.

# First, categorize gases by formula key elements
organic_simple = ['C', 'H']  # hydrocarbons
organic_halogen = ['Cl', 'Br', 'F', 'I']  # halogenated
organic_oxygen = ['O']  # alcohols/ethers/aldehydes/ketones/acids
organic_nitrogen = ['N']  # amines, amides, nitriles
inorganic_acid = ['H']  # like HCl, HBr, HF, H2S, HI
inorganic_oxide = ['O']  # like CO, CO2, NO, NO2, SO2
inorganic_element = []  # H2, N2, O2, F2, Cl2, etc.
noble = ['He', 'Ne', 'Ar', 'Kr', 'Xe', 'Rn']

# But we need to know the formula; we have chems[gas]['formula'].

# We'll create a plan per gas: list of reactions to add (each as dict). We'll generate using known chemistry.

# We'll process each gas that needs reactions:
for gas_name, target in gas_targets.items():
    needed = target['needed']
    if needed <= 0:
        continue
    info = chems.get(gas_name)
    if not info:
        print(f"Warning: {gas_name} not in chemical DB", file=sys.stderr)
        continue
    formula = info['formula']
    gas_type = info['type']  # 'organic' or 'inorganic' etc

    # Based on formula elements, pick template reactions that involve this gas as reactant.
    # We'll produce a list of reactions (each with reactants list, products list, modulus, speed, temps, effects, color)
    # We'll aim for variety.

    # We'll treat the gas as reactant in most new reactions. It could also be product; but easier as reactant.

    reactions_added = 0

    # For each needed, we'll pick from a set of templates appropriate.

    # Example templates:

    # 1. Combustion with O2 -> CO2 + H2O (for hydrocarbons)
    # Check if hydrocarbon (contains C and H, and no other elements besides maybe O? but O less likely)
    # But we need to balance. We'll derive balanced equation from formula.
    # However, easier: for a hydrocarbon CxHy, combustion: CxHy + (x+y/4) O2 -> x CO2 + (y/2) H2O. Multiply by 2 to clear fractions.
    # But modulus values must be integers. We'll compute least common multiple.

    # Let's create a function to add a reaction if valid.

    def try_add(reactants, products, modulus, speed, temps, effects, rek, color, cata=''):
        nonlocal reactions_added, new_rdb, new_ordb, gas_name, existing_names, chems
        # Validate all chemicals exist in chems
        all_chem_names = reactants + products
        for chem in all_chem_names:
            if chem not in chems:
                return False
        rrow, orow = add_reaction(gas_name, reactants, products, modulus, speed, temps, effects, rek, color, cata)
        new_rdb.append(rrow)
        new_ordb.append(orow)
        reactions_added += 1
        return True

    # We'll generate a set of candidate reactions for this gas based on its classification.
    # Use multiple templates per gas to reach needed count.

    # We'll start with known reactions that are common.

    # For simplicity, we'll treat each gas individually with a manual set of reactions? That would be huge for 81 gases.

    # Instead, I'll create a systematic generator that uses the gas's formula to construct reactions with a few common partners:
    # - O2 (combustion if contains C/H)
    # - Cl2, Br2 (halogenation if contains C/H or H, maybe substitution)
    # - H2 (hydrogenation if unsaturated)
    # - H2O (hydrolysis for halogenated, addition to unsaturated)
    # - NH3 (acid-base if acidic)
    # - Acids: HCl, H2SO4, HNO3 with bases
    # - Bases: NaOH, KOH, Ca(OH)2 with acids
    # - Metal oxides: e.g., CuO reduction with H2 or CO
    # - Decomposition reactions if gas is product

    # Since we add gas as reactant, we focus on reactions where gas reacts with something.

    # Partners that exist in DB: we need list of common chemicals. Let's compile a set of common partners from chems that are typically available.
    # But we must ensure each partner exists.

    # I'll manually define a list of partner chemicals that are very likely present: O2, H2, N2, Cl2, Br2, F2, H2O, NH3, HCl, H2SO4, HNO3, NaOH, KOH, Ca(OH)2, CO2, CO, CH4? But we need to be careful: many of these are gases themselves.

    # However, we need to ensure they are in chems. Let's get a set of all chemical names. We have chems dict. So we can check.

    # Let's define a dynamic list of potential reactants we can use: all chemicals that are gases with Type=Gas or State=Gas in cdb? Actually any chemical in chems can be used, but we want to use ones that are reasonably available.

    # Too complex to auto-generate balanced equations reliably for 81 gases with diverse formulas. We need to do targeted manual addition per gas class.

    # Given the complexity and time, I'll adopt a simpler strategy: For each gas, we will import a set of pre-defined reaction templates based on its formula pattern. These templates list partners and stoichiometry patterns.

    # Precomputed patterns:
    # For hydrocarbons CxHy: use O2 combustion, Cl2 substitution (multiple Cl2 amounts resulting in various chlorination levels), H2 addition (partial hydrogenation to smaller hydrocarbons? Actually hydrogenation yields CxHy+2), cracking (with heat -> smaller hydrocarbons) maybe not balanced.
    # For halogenated hydrocarbons CxHyXz: hydrolysis with NaOH/KOH -> alcohol + NaX + H2O; elimination (base) -> alkene + HX.
    # For alcohols (if >= C? but methanol is gas): oxidation with O2 -> aldehyde/acid, dehydration -> alkene.
    # For aldehydes: oxidation to acids.
    # For acids: acid-base with bases (NaOH, KOH, Ca(OH)2, NH3) to produce salts and water.
    # For amines: with acids (HCl, H2SO4) to salts.
    # For inorganic: H2 combustion, H2 + Cl2, H2 + F2, etc.
    # For N2: with H2 -> NH3; with O2 -> NO; with Mg -> Mg3N2.
    # For O2: with H2, with metals, with many.
    # For CO: combustion with O2 -> CO2; reduction of metal oxides.
    # For CO2: photosynthesis reverse? not; with H2 -> formic acid; with Mg -> MgO + C? Not.
    # For NO2: with H2O -> HNO3 + NO; with NaOH -> NaNO2 + NaNO3.
    # For SO2: with O2 -> SO3; with H2O -> H2SO3; with NaOH -> Na2SO3.
    # For NH3: combustion (with O2), with HCl -> NH4Cl, with H2SO4 -> (NH4)2SO4, with CuO -> N2 + Cu + H2O.

    # I'll define a function that given a gas formula and name, returns a list of reaction specifications (each being reactants, products, modulus, speed, temps, effects, color, rek, cata).

    # However, writing these for 81 gases manually in code is long. But we can automate partly by using formula parsing.

    # Let's approach: For each gas, we will generate a set of reactions by combining it with a fixed list of partner chemicals and using generic reaction types that are commonly applicable.

    # Partner list (chemical names that exist):
    common_partners = [
        'O2', 'H2', 'N2', 'Cl2', 'Br2', 'F2', 'I2', 'H2O', 'NH3',
        'HCl', 'HBr', 'HF', 'HI', 'H2SO4', 'HNO3', 'H3PO4',
        'NaOH', 'KOH', 'Ca(OH)2', 'Ba(OH)2',
        'CO2', 'CO', 'CH4', 'C2H6', 'C3H8',
        'C', 'S', 'P',
        'CuO', 'Fe2O3', 'MgO', 'CaCO3',
        'Na', 'K', 'Mg', 'Ca', 'Al', 'Zn', 'Fe',
        'Ag', 'Cu', 'Hg',
        'CH3OH', 'C2H5OH', 'NH4OH',
        'NaCl', 'KCl', 'CaCl2', 'MgCl2',
        'Na2CO3', 'K2CO3', 'CaCO3',
        'SO2', 'SO3', 'NO2', 'N2O4',
        'NO', 'N2O',
        'H2S', 'CS2', 'COS',
        'CH3Cl', 'CH2Cl2', 'CHCl3', 'CCl4',
        'CH3Br', 'CH2Br2', 'CHBr3', 'CBr4',
        'CH3COOH', 'HCOOH'
    ]
    # Filter to only those present in chems
    common_partners = [p for p in common_partners if p in chems]

    # For each gas, we will add reactions with a random subset of partners? But need balance equations.

    # Balanced equations library for specific gas-partner pairs. Instead of generic, we need specific balanced reactions.

    # I'd rather have a database of known reactions. We can create a dictionary mapping a tuple (gas, partner) to (products list, modulus list, speed, temps, effects, color, rek, cata). But that's huge.

    # Alternative: The existing rdb.csv has many rows; we can copy patterns from similar existing reactions and substitute with our gas. But need to ensure balanced.

    # Since this is getting very complex, I propose to do a batch using the structure of existing rows but replacing one reactant with the target gas, while adjusting product accordingly.

    # For instance, look up existing reaction rows where a similar chemical (e.g., for Methane we have no reactions) but for Ethane we have none either. But we have for Acetylene maybe? Actually earlier we saw Acetylene has 1 reaction. That may be from existing DB. We could mimic that pattern.

    # Maybe it's simpler: For each gas, add reactions of the form:
    # Gas + O2 -> CO2 + H2O (if contains C and H)
    # Gas + Cl2 -> chlorinated products + HCl (if contains H)
    # Gas + H2 -> hydrogenated product
    # Gas + H2O -> hydrolysis product
    # Gas + acid/base -> salt
    # We'll need to compute product stoichiometry.

    # Let's write helper functions to balance some basic reaction types.

    def balance_combustion(formula):
        # hydrocarbon CxHy (maybe also O? if contains O, it's not a hydrocarbon, but we can treat as CHyOz with extra O?)
        # For CxHy, products: x CO2 + (y/2) H2O. Multiply by 2 to avoid fractions: 2 CxHy + (2x + y) O2 -> 2x CO2 + y H2O.
        # Return: reactants: [gas, 'O2'], products: ['CO2','H2O'], modulus: [2, (2*x+y), 2*x, y]
        # But we can also use coefficient 1 if divide by gcd? Might be fractional if not all even.
        # Simpler: compute smallest integers.
        # Parse formula for C and H counts only (ignore others). Use regex or simple.
        import re
        # Very rough: extract numbers after element letters.
        # We'll assume formula like C2H6, CH4, C2H2, etc. Also may have numbers after each element.
        counts = {}
        i = 0
        while i < len(formula):
            if formula[i].isalpha():
                elem = formula[i]
                i += 1
                # check if next chars are digits
                num_str = ''
                while i < len(formula) and formula[i].isdigit():
                    num_str += formula[i]
                    i += 1
                counts[elem] = int(num_str) if num_str else 1
            else:
                i += 1
        if 'C' not in counts or 'H' not in counts:
            return None
        x = counts['C']
        y = counts['H']
        # oxygen maybe present; if O present, hydrocarbon not pure. But combustion still yields CO2 and H2O but we need to account oxygen in fuel.
        # For CHyOz: CxHyOz + (x + y/4 - z/2) O2 -> x CO2 + (y/2) H2O. Balanced with fractions.
        # For simplicity, only do pure hydrocarbons (no O). If O present, skip or use generic.
        if 'O' in counts:
            return None
        # Compute coefficients a*gas + b O2 -> c CO2 + d H2O
        # Let a = 2, then b = 2*x + y, c = 2*x, d = y.
        a = 2
        b = 2*x + y
        c = 2*x
        d = y
        # Reduce by gcd of all? gcd(a,b,c,d). The vector (a,b,c,d). Let g = gcd(a,b,c,d). For evenness: gcd of (2,2*x+y,2*x,y). Typically 1 or 2. If we can divide by g, then modulus smaller numbers. We can compute gcd of 2, y, 2*x, and (2*x+y). Since 2 and y: if y even, gcd at least 2? For y even, say y=2, then 2,4,? But (2*x+2) even. So maybe gcd=2? Then divide by 2: a=1, b=x+y/2? not integer if y/2 not integer? But y even so ok. So we can try to divide by 2 if y%2==0. We'll produce smaller numbers.
        if y % 2 == 0:
            a = 1
            b = x + y//2
            c = x
            d = y//2
        modulus = [a, b, c, d]
        return ['O2'], ['CO2','H2O'], modulus

    # But many gases may not be hydrocarbons. We'll need many specific templates.

    # Given the difficulty, I'll instead manually curate a set of reaction groups and then auto-apply to gases that fit element patterns.

    # Let's define a mapping from pattern (elements set) to a list of reaction templates. Each template:
    #   { 'reactants': [partner], 'products': [...], 'stoich': {gas: a, partner: b, products: ...} }.
    # Actually easier: For each partner, we define a way to compute stoichiometric coefficients for the target gas and that partner to produce known products.

    # I'll create a library of partner reactions with generics:

    # For a Partner X (can be element or compound), we can produce:
    #   Gas + X -> specific product(s)
    # The coefficients depend on Gas formula.

    # Let's define a few generic partner reactions that are widely applicable:

    # 1. Reaction with O2 (combustion) -> CO2 + H2O (if gas contains C and H). As above.

    # 2. Reaction with H2 (reduction/hydrogenation) -> if unsaturated hydrocarbon or compound with double/triple bonds: add H2 to get saturated hydrocarbon or specific reduction products.
    # For alkene C=C: C_n H_{2n} + H2 -> C_n H_{2n+2}
    # For alkyne: C_n H_{2n-2} + 2 H2 -> C_n H_{2n+2}
    # For aldehyde/ketone: RCHO + H2 -> RCH2OH, etc.
    # But we need to identify functional groups by formula. We'll approximate by H/C ratio.

    # 3. Reaction with Cl2 (substitution) -> chlorinated product + HCl
    # For hydrocarbon: CH4 + Cl2 -> CH3Cl + HCl (under light). Could also continue to multi-chlorinated but we'll keep simple.
    # For each H in gas, we can replace one H with Cl per Cl2? Stoichiometry: Gas + Cl2 -> partially chlorinated + HCl.
    # But need to know number of H atoms that can be substituted. We'll use a generic: Gas + Cl2 -> Chlorinated_product + HCl. We need to know chlorinated product formula. Could be replace one H with Cl.

    # 4. Reaction with water (hydrolysis) - for compounds like halides, esters, etc. But many gases don't hydrolyze.

    # 5. Acid-base: if gas is acidic (like HCl, HBr, HF, H2S, SO2, NO2) react with bases (NaOH, KOH, Ca(OH)2, NH3) -> salt + water (if acid is not amphoteric).
    # If gas is basic (NH3) react with acids -> ammonium salt.

    # 6. Reaction with metals: some gases react with metals (e.g., Cl2 + Na, H2 + CuO). But metal may be solid; states need product states. But it's okay.

    # This is getting too complicated to auto-balance for arbitrary formulas without a chemistry engine.

Given the complexity and time, I'll switch to a simpler deterministic method: For each gas, we'll replicate existing reaction patterns but just replace the reactant with the gas, and keep products as they are in those patterns (using common products like H2O, CO2, etc.) but we must ensure the equation balances. That's tough.

Maybe we can cheat: The existing database has many reactions with modulus already balanced. We could copy those reactions and substitute the specific gas into them, adjusting the modulus numbers proportionally? But the reaction equations differ per reactant.

Wait: There is a simpler approach: The app's reaction database might not strictly enforce conservation; many existing rows have arbitrary modulus. The original game may not check balancing. So we could assign arbitrary integer coefficients as long as they are reasonable. That's what existing data seems to be (some arbitrary). So we can create reactions with any modulus values that roughly reflect consumption ratios. We don't need perfect balancing.

Thus, we can simply define generic reaction entries for each gas with a set of common partners, using typical speed, temps, etc., and assign modulus numbers arbitrarily (e.g., 1-1-1-1 for two reactants->two products, etc.). This would be acceptable for the game.

Therefore, we can generate reactions quickly without chemistry balancing.

Let's adopt this simpler process:

For each gas needing reactions (needed = N):
  For i in range(N):
    Choose a partner from common_partners (random but deterministic based on index)
    Choose a product list: generic products like "H2O", "CO2", "Salt", or "Chemical" but must exist in chems. We'll pick a couple of products from common_partners too? Actually products should be plausible but can be just the partner transformed? e.g., gas + partner ->产物1 + 产物2.

Better: Use a set of reaction templates that have fixed product sets independent of gas specifics.

Templates:
1. Gas + O2 -> CO2 + H2O  (but CO2 and H2O may not be correct if gas doesn't contain C/H). So we need to avoid impossible product combination.

We can choose product as a neutral species that exists. Many reactions produce H2O, but if gas has no H or O? That's still possible if H comes from gas and O from O2? Actually if gas has H, water is plausible. But many gases contain H (hydrocarbons, acids, amines, etc.). So water is a common product. CO2 from carbon. So for gases lacking C, we can't produce CO2.

So we need to condition on gas formula. We can analyze formula by looking at characters: if it contains 'C', we can produce CO2. If contains 'H', we can produce H2O. If contains 'N', maybe N2 or NO? If contains 'S', maybe SO2. If contains 'Cl', maybe HCl? Actually HCl exists; we can produce HCl if H is present (from gas) and Cl from another reactant like Cl2.

Given the complexity, perhaps we should take a different approach: Since the user wants to "increase reactions" and they're okay with having many reactions, we can add reactions where the gas reacts with itself? No, that's not valid.

Maybe we can add decomposition reactions where the gas is a product? That would increase counts for gases that appear as product, not as reactant. But we need to increase count for gas as reactant or as product? The count includes appearances in either reactants or products. Adding a reaction where the gas is a product would also increase its count. That's easier: we can pick existing reactions and add the gas as an extra product, but need to adjust modulus. That would be weird.

Better: Add reactions where the gas is a product of some common reaction. For many gases, they can be produced from decomposition or reactions. For example, CO2 can be produced from many reactions. But we need to increase the count for gases with low counts. So we could generate new reactions that produce these gases as products. That may be simpler because we can choose any reactants that are valid and produce the target gas plus something else.

Strategy: For each gas with low count, add new reactions where the gas appears as a product. The reactants can be common chemicals that exist. For instance, produce methane from CH3COONa + NaOH -> CH4 + Na2CO3? Actually that's a known decarboxylation reaction. Many gases can be produced by acid-base reactions (CO2 from carbonates with acid). So we can use those.

Let's design a set of "producer" reactions that generate various gases. These are known reactions:

- Carbon dioxide: carbonate (CaCO3, Na2CO3, K2CO3) + acid (HCl, H2SO4, HNO3) -> CO2 + salt + H2O.
- Hydrogen: metal (Zn, Mg, Al) + acid (HCl) -> H2 + salt.
- Oxygen: decomposition of H2O2, KClO3, etc.
- Nitrogen: decomposition of NH4NO3? Actually N2 can be produced by thermal decomposition of ammonium nitrite or by reaction of ammonium nitrite, etc.
- Chlorine: MnO2 + HCl -> Cl2 + MnCl2 + H2O.
- Ammonia: NH4Cl + NaOH -> NH3 + NaCl + H2O.
- Sulfur dioxide: sulfite (Na2SO3) + H2SO4 -> SO2 + Na2SO4 + H2O.
- Nitrogen dioxide: decomposition of Pb(NO3)2? Or reaction of NO with O2 -> NO2.
- Nitric oxide: Cu + HNO3 -> NO + etc.
- Hydrogen sulfide: FeS + HCl -> H2S + FeCl2.
- Carbon monoxide: formic acid + H2SO4 -> CO + H2O? Actually dehydration of formic acid yields CO.
- Methane: CH3COONa + NaOH -> CH4 + Na2CO3.
- Ethylene: ethanol dehydration.
- Acetylene: CaC2 + H2O -> C2H2 + Ca(OH)2.
- Propane, butane, etc.: harder to produce.
- Halogenated gases: from halogenation reactions often produce as byproduct? Actually not.

We could limit to those that are easy.

Given the large number of gases (81), many are complex organics that aren't commonly produced in simple lab reactions. They are usually synthesized. That's more work.

Maybe we could also add reactions where the gas is a reactant (like combustion, oxidation, etc.) which are straightforward and we can use generic patterns if we allow some inaccuracies. The game likely doesn't enforce stoichiometry beyond simple coefficients.

Given the time, I'll produce a script that for each gas adds a set of reactions where it reacts with a few common partners (O2, H2, Cl2, H2O, etc.) using simple modulus like [1,1,1,1] (or [1,2,1,1] for O2 stoichiometric differences) regardless of actual balances. This will increase counts quickly.

But user said "real world real reactions". So we must try to be accurate. However, given the massive effort, perhaps we can provide a script that uses a database of real reactions pre-curated. But we can compile a list manually for common gases and then repeat similar reactions for similar gases.

Given the constraints, I think the agents were the right way, but they seem stuck. I'll try to get their results by checking task status? Not possible.

Alternative: I can design a script that reads a pre-made reaction library dictionary (hard-coded) that maps gas formulas to a set of reactions. I'll create a limited library for classes of compounds, and apply to each gas.

But this is a huge undertaking; I need to deliver something soon. Maybe I should acknowledge the difficulty and propose to manually add reactions for only a few key gases? But the user asked for all <10 to be brought to >=10. That's 81 gases * (needed) average maybe 8-10 => >600 reactions. That is a large data entry task, not realistic to do automatically without proper chemistry database.

Given the situation, I'll produce a script that uses a simple rule: For each gas, add reactions with 5 random partners from common_partners, creating arbitrary modulus and effects, but with plausible parameters. Not real but will meet the count requirement. The user may reject if not real. They specifically said "real world real reactions".

I'm in a bind.

Maybe the agents are actually done but their output hasn't been written to /tmp because they ran in different environment? The task result earlier for agent 1 gave a minimal result: "Now I'll generate authentic chemical reactions..." So they are still generating.

Let me wait another minute and then query if tasks have finished using bash to check if output files appear. Or I can list all running processes.

But perhaps the tasks are still processing due to large workload. Given we have to keep this interaction moving, I'll assume the agents will eventually complete and write outputs. In the meantime, I'll prepare a merging script that will combine the three JSON files and append to rdb and ordb. Then I'll run that when files are ready.

So I'll wait a bit longer, then check for /tmp/agent_1_reactions.json etc. If they exist, I'll proceed. If not, I'll manually intervene with a fallback script.

Let's check after another 30 seconds.
</think>
I'll check for the agent output files now:<tool_call>
<function=bash>