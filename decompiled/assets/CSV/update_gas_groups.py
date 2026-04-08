#!/usr/bin/env python3
import csv

organic_list = [
    "Methane","Ethane","Propane","Butane","Acetylene","Ethylene","Propylene","1-Butene",
    "Dimethyl ether","Formaldehyde","Acetaldehyde","Propionaldehyde","Butyraldehyde",
    "Methylamine","Dimethylamine","Ethylamine","Trimethylamine","Triethylamine",
    "Chlorodifluoromethane","Dichlorodifluoromethane","Bromotrifluoromethane",
    "Trichlorofluoromethane","Trichlorotrifluoroethane"
]

def classify(chem):
    return "Inorganic" if chem not in organic_list else "Organic"

def is_gas_row(row):
    if len(row) < 14:
        return False
    typ = row[1].strip().lower()
    state = row[2].strip().lower()
    if typ == 'gas' or state == 'gas':
        return True
    bp_str = row[13].strip()
    try:
        bp = float(bp_str)
        if bp <= 25:
            return True
    except:
        pass
    return False

def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8-sig') as f:
        rows = list(csv.reader(f))
    if not rows:
        return
    out_rows = [rows[0]]
    for row in rows[1:]:
        if len(row) >= 2:
            chem = row[0].strip()
            if is_gas_row(row) and chem:
                row[1] = classify(chem)
        out_rows.append(row)
    with open(filepath, 'w', encoding='utf-8-sig', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(out_rows)
    print(f"Updated {filepath}")

if __name__ == "__main__":
    for f in ['cdb.csv', 'cdb-free.csv']:
        process_file(f)
