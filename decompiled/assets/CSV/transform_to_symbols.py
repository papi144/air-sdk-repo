#!/usr/bin/env python3
import csv, os, sys

BASE = '/home/codespace/chlab/decompiled/assets/CSV'

# Step 1: Build mapping from Chemical name -> Formula (DName) for gases
chems = {}  # name -> row data
for fname in ['cdb.csv', 'cdb-free.csv']:
    with open(os.path.join(BASE, fname), 'r', encoding='utf-8-sig') as f:
        reader = csv.reader(f)
        header = next(reader)
        for row in reader:
            if row and row[0].strip():
                name = row[0].strip()
                chems[name] = {'row': row, 'formula': row[6].strip() if len(row) > 6 else name, 'type': row[1].strip().lower()}

# Determine which chemicals are gases (using criteria)
def is_gas(row):
    if len(row) < 14:
        return False
    typ = row[1].strip().lower()
    state = row[2].strip().lower()
    if typ == 'gas' or state == 'gas':
        return True
    try:
        bp = float(row[13].strip())
        if bp <= 25:
            return True
    except:
        pass
    return False

# Build mapping for gases: current name -> formula
gas_mapping = {}
for name, info in chems.items():
    if is_gas(info['row']):
        formula = info['formula']
        gas_mapping[name] = formula

print(f"Found {len(gas_mapping)} gases to rename to symbols.")

# Step 2: Update chemical DBs (cdb.csv, cdb-free.csv)
def update_chem_db(filepath):
    with open(filepath, 'r', encoding='utf-8-sig') as f:
        rows = list(csv.reader(f))
    header = rows[0]
    out_rows = [header]
    chem_idx = 0
    state_idx = 2
    color1_idx = 15
    alpha1_idx = 16
    for row in rows[1:]:
        if len(row) < 3:
            out_rows.append(row)
            continue
        name = row[chem_idx].strip()
        # Ensure State = Gas for gases
        if name in gas_mapping:
            # Set State to Gas
            if state_idx < len(row):
                row[state_idx] = 'Gas'
            # Set Chemical to formula
            formula = gas_mapping[name]
            row[chem_idx] = formula
            # Also update RName, CName, DName to formula for consistency? Not necessary but okay.
            if len(row) > 4:
                row[4] = formula  # RName
            if len(row) > 5:
                row[5] = formula  # CName
            if len(row) > 6:
                row[6] = formula  # DName
            # Adjust alpha to 0.6 for more transparency (color stays same)
            for a_idx in [alpha1_idx, 18, 20, 22]:
                if a_idx < len(row):
                    try:
                        # Keep existing float string? We'll set to "0.6"
                        row[a_idx] = '0.6'
                    except:
                        pass
        out_rows.append(row)
    with open(filepath, 'w', encoding='utf-8-sig', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(out_rows)
    print(f"Updated {filepath}")

update_chem_db(os.path.join(BASE, 'cdb.csv'))
update_chem_db(os.path.join(BASE, 'cdb-free.csv'))

# Step 3: Update reaction DBs (rdb.csv, ordb.csv) – replace chemical names with formulas
def update_reaction_db(filepath):
    with open(filepath, 'r', encoding='utf-8-sig') as f:
        rows = list(csv.reader(f))
    header = rows[0]
    out_rows = [header]
    for row in rows[1:]:
        if len(row) >= 4:
            # Reactants column (index 2) and Products column (index 3) are hyphen-separated
            reactants = row[2].split('-')
            products = row[3].split('-')
            # Replace each chemical if in mapping
            new_reactants = [gas_mapping.get(r.strip(), r.strip()) for r in reactants]
            new_products = [gas_mapping.get(p.strip(), p.strip()) for p in products]
            row[2] = '-'.join(new_reactants)
            row[3] = '-'.join(new_products)
        out_rows.append(row)
    with open(filepath, 'w', encoding='utf-8-sig', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(out_rows)
    print(f"Updated {filepath}")

update_reaction_db(os.path.join(BASE, 'rdb.csv'))
update_reaction_db(os.path.join(BASE, 'ordb.csv'))

print("Transformation complete: gases renamed to formulas, State set to Gas, alpha=0.6, reactions updated.")
EOF

python3 /home/codespace/chlab/decompiled/assets/CSV/transform_to_symbols.py