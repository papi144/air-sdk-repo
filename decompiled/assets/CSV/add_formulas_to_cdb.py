#!/usr/bin/env python3
import csv, os

BASE = '/home/codespace/chlab/decompiled/assets/CSV'

# Mapping from chemical name to formula for common organic gases
organic_formulas = {
    "Methane": "CH4",
    "Ethane": "C2H6",
    "Propane": "C3H8",
    "Butane": "C4H10",
    "Ethylene": "C2H4",
    "Propylene": "C3H6",
    "1-Butene": "C4H8",
    "Acetylene": "C2H2",
    "Formaldehyde": "CH2O",
    "Acetaldehyde": "CH3CHO",
    "Propionaldehyde": "C2H5CHO",
    "Butyraldehyde": "C3H7CHO",
    "Dimethyl ether": "CH3OCH3",
    "Methylamine": "CH3NH2",
    "Ethylamine": "C2H5NH2",
    "Dimethylamine": "(CH3)2NH",
    "Trimethylamine": "(CH3)3N",
    "Triethylamine": "(C2H5)3N",
    "Trichlorofluoromethane": "CCl3F",
    "Dichlorodifluoromethane": "CCl2F2",
    "Trichlorotrifluoroethane": "C2Cl3F3",
    "Bromotrifluoromethane": "CBrF3",
    "Chlorodifluoromethane": "CHClF2",
    "C3H4": "C3H4",
    "C4H6": "C4H6",
    "C3H6": "C3H6",
    "C4H8": "C4H8",
    "C2H4O": "C2H4O",
    "C3H8O": "C3H8O",
    "C2H3Cl": "C2H3Cl",
    "CF4": "CF4",
    "C2F6": "C2F6",
    "C3F8": "C3F8",
    "CHF3": "CHF3",
    "C2HF5": "C2HF5",
    "C2H5Cl": "C2H5Cl",
    "CHCl2F": "CHCl2F",
    "CH3Br": "CH3Br",
    "CH3Cl": "CH3Cl",
    "C4H8": "C4H8",
    "C4H6": "C4H6",
    "C3H4": "C3H4",
    "CH3F": "CH3F",
    "C2H4F2": "C2H4F2",
    "C2H3F3": "C2H3F3",
    "C2H2F4": "C2H2F4",
    "C4F10": "C4F10",
    "CH2F2": "CH2F2",
}

def add_formulas_to_cdb():
    filepath = os.path.join(BASE, 'cdb.csv')
    with open(filepath, 'r', encoding='utf-8-sig') as f:
        rows = list(csv.reader(f))
    header = rows[0]
    out_rows = [header]
    chem_idx = 0
    type_idx = 1
    dname_idx = 6  # DName column
    for row in rows[1:]:
        chem = row[chem_idx].strip()
        typ = row[type_idx].strip() if type_idx < len(row) else ""
        # If organic and DName is not already a formula (not containing numbers typically), set formula
        if typ == "Organic" and chem in organic_formulas:
            formula = organic_formulas[chem]
            if dname_idx < len(row):
                row[dname_idx] = formula
                print(f"cdb.csv: {chem} -> {formula}")
        out_rows.append(row)
    with open(filepath, 'w', encoding='utf-8-sig', newline='') as f:
        writer = csv.writer(f)
        writer.writerows(out_rows)
    print(f"Updated cdb.csv with formulas")

add_formulas_to_cdb()
