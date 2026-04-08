#!/usr/bin/env python3
import csv

# Organic gases list
organic_list = [
    "Methane","Ethane","Propane","Butane","Acetylene","Ethylene","Propylene","1-Butene",
    "Dimethyl ether","Formaldehyde","Acetaldehyde","Propionaldehyde","Butyraldehyde",
    "Methylamine","Dimethylamine","Ethylamine","Trimethylamine","Triethylamine",
    "Chlorodifluoromethane","Dichlorodifluoromethane","Bromotrifluoromethane",
    "Trichlorofluoromethane","Trichlorotrifluoroethane"
]

# Colored inorganic gases mapping
colored_inorganic = {
    "Cl2": "0x9ACD32",   # yellow-green
    "F2": "0xFFFFB5",    # pale yellow
    "O3": "0x87CEEB",    # sky blue
    "NO2": "0x8B4513",   # brown
    "N2O4": "0x8B4513",  # brown
}

def classify(chem):
    return "organic" if chem in organic_list else "inorganic"

def get_color(chem):
    if chem in colored_inorganic:
        return colored_inorganic[chem]
    grp = classify(chem)
    if grp == "organic":
        return "0xF0F0F0"
    else:
        return "0xE0E0E0"

# Build mapping for all gases we care about (the 69 list)
gases_list = [
    "1-Butene","Acetaldehyde","Acetylene","Ammonia","Ar","Boron tribromide","Boron trichloride","Boron trifluoride",
    "Bromotrifluoromethane","Butane","Butyraldehyde","CO","CO2","Ca(OH)2","Carbonyl sulfide","Chlorodifluoromethane",
    "Cl2","Dichlorodifluoromethane","Dimethyl ether","Dimethylamine","Dinitrogen tetroxide","Disilane","Ethane",
    "Ethylamine","Ethylene","F2","Formaldehyde","Germane","H2","H2S","H3PO4","HBr","He","Hydrofluoric acid",
    "Hydrosulfuric acid","Lead(IV) chloride","Methane","Methylamine","N2","N2O","NH3","NH4Cl","NO","NO2","NaHCO3",
    "Ne","Nitric oxide","Nitrogen dioxide","Nitrogen trifluoride","Nitrous oxide","O2","O3","Phosgene","Plumbane",
    "Propane","Propionaldehyde","Propylene","SO2","Selenium hexafluoride","Silane","Silicon tetrafluoride","Stannane",
    "Sulfur hexafluoride","Tellurium hexafluoride","Thionyl tetrafluoride","Trichlorofluoromethane",
    "Trichlorotrifluoroethane","Triethylamine","Trimethylamine"
]
mapping = {chem: get_color(chem) for chem in gases_list}

def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8-sig') as f:
        rows = list(csv.reader(f))
    if not rows:
        return
    header = rows[0]
    chem_idx = 0
    typ_idx = 1
    state_idx = 2
    avail_idx = 3
    bp_idx = 13
    color1_idx = 15
    alpha1_idx = 16
    out_rows = [header]
    for row in rows[1:]:
        if len(row) < 16:
            out_rows.append(row)
            continue
        chem = row[chem_idx].strip()
        avail = row[avail_idx].strip() if avail_idx < len(row) else ''
        is_gas = False
        if avail == '1':
            # Check Type, State, Bp
            if len(row) > typ_idx:
                typ = row[typ_idx].strip().lower()
                if typ == 'gas':
                    is_gas = True
            if not is_gas and len(row) > state_idx:
                state = row[state_idx].strip().lower()
                if state == 'gas':
                    is_gas = True
            if not is_gas and len(row) > bp_idx:
                bp_str = row[bp_idx].strip()
                try:
                    bp = float(bp_str)
                    if bp <= 25:
                        is_gas = True
                except:
                    pass
        if is_gas and chem in mapping:
            color = mapping[chem]
            # Update 4 color fields if they exist
            for col_idx in [color1_idx, 17, 19, 21]:
                if col_idx < len(row):
                    row[col_idx] = color
            # Update alphas to "1"
            for a_idx in [alpha1_idx, 18, 20, 22]:
                if a_idx < len(row):
                    row[a_idx] = "1"
        out_rows.append(row)
    # Write back
    with open(filepath, 'w', encoding='utf-8-sig', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(out_rows)
    print(f"Updated {filepath}")

if __name__ == "__main__":
    for f in ['cdb.csv', 'cdb-free.csv']:
        process_file(f)
