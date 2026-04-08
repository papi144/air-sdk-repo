#!/usr/bin/env python3
import csv
from pathlib import Path

BASE = Path("/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV")


def read_rows(path):
    with path.open(newline="", encoding="utf-8-sig") as f:
        return list(csv.reader(f))


def read_dicts(path):
    with path.open(newline="", encoding="utf-8-sig") as f:
        return list(csv.DictReader(f))


def write_rows(path, rows):
    with path.open("w", newline="", encoding="utf-8-sig") as f:
        csv.writer(f).writerows(rows)


def norm_side(side):
    return tuple(sorted(t.strip() for t in side.split("-") if t.strip()))


def load_existing():
    keys = set()
    names = set()
    for name in ("rdb.csv", "ordb.csv"):
        for row in read_dicts(BASE / name):
            reactants = (row.get("Reactants") or "").strip()
            products = (row.get("Products") or "").strip()
            if reactants or products:
                keys.add((norm_side(reactants), norm_side(products)))
            names.add((row.get("Name") or "").strip())
    return keys, names


def make_name(left, partner):
    return f"{left}_{partner}".replace(" ", "_").replace("(", "").replace(")", "").replace("/", "_")


def add_rows(csv_name, rows_to_add):
    path = BASE / csv_name
    rows = read_rows(path)
    header, body = rows[0], rows[1:]
    existing_keys, existing_names = load_existing()
    appended = 0
    for row in rows_to_add:
        key = (norm_side(row[2]), norm_side(row[3]))
        if key in existing_keys:
            continue
        name = row[0]
        i = 2
        while name in existing_names:
            name = f"{row[0]}_{i}"
            i += 1
        row[0] = name
        body.append(row)
        existing_keys.add(key)
        existing_names.add(name)
        appended += 1
    write_rows(path, [header] + body)
    return appended


def rdb_row(name, reactants, products, speed="0.2", modulus="1-1-1", temps="20-300", states="3-3", effects="FALSE", rek="0", color="0xFFFFFF"):
    return [name, speed, reactants, products, modulus, temps, states, effects, rek, color, ""]


FORMULAS = {
    "Hexane": "C6H14",
    "Heptane": "C7H16",
    "Octane": "C8H18",
    "Nonane": "C9H20",
    "Decane": "C10H22",
    "1-Pentene": "C5H10",
    "1-Hexene": "C6H12",
    "1-Propanol": "C3H8O",
    "2-Propanol": "C3H8O",
    "1-Butanol": "C4H10O",
    "2-Butanol": "C4H10O",
    "1-Pentanol": "C5H12O",
    "1-Hexanol": "C6H14O",
    "1-Heptanol": "C7H16O",
    "1-Octanol": "C8H18O",
    "Propylene glycol": "C3H8O2",
    "Methyl ethyl ketone": "C4H8O",
    "Caprylic acid": "C8H16O2",
    "Propyl acetate": "C5H10O2",
    "Butyl acetate": "C6H12O2",
    "Diethylamine": "C4H11N",
    "Formamide": "CH3NO",
    "Acetonitrile": "C2H3N",
    "Ethylbenzene": "C8H10",
    "Styrene": "C8H8",
    "Dichloromethane": "CH2Cl2",
    "Trichloroethylene": "C2HCl3",
    "Tetrachloroethylene": "C2Cl4",
    "Perchloric acid": "HClO4",
    "Chloric acid": "HClO3",
    "Hypochlorous acid": "HClO",
    "Nitrous acid": "HNO2",
    "Carbonic acid": "H2CO3",
    "Hydroiodic acid": "HI",
    "Thionyl chloride": "SOCl2",
    "Sulfuryl chloride": "SO2Cl2",
    "Silicon tetrachloride": "SiCl4",
    "Germanium tetrachloride": "GeCl4",
    "Titanium tetrachloride": "TiCl4",
    "Chromyl chloride": "CrO2Cl2",
    "C3H8O": "C3H8O",
    "C2H3Cl": "C2H3Cl",
    "CF4": "CF4",
    "C2F6": "C2F6",
    "C3F8": "C3F8",
    "CHF3": "CHF3",
    "C2HF5": "C2HF5",
    "CHCl2F": "CHCl2F",
    "C2H4F2": "C2H4F2",
    "C2H3F3": "C2H3F3",
    "C2H2F4": "C2H2F4",
    "C4F10": "C4F10",
}


ORGANIC_OXIDATION = {
    "O2": ("CO2-H2O", "0.2", "1-2-1-2", "Ignite", "3-3", "BURN3", "8"),
    "N2O": ("CO2-H2O-N2", "0.2", "1-2-1-2-1", "50-500", "3-3", "FIRE3", "5"),
    "CuO": ("CO2-H2O-Cu", "0.2", "1-4-1-2-4", "50-500", "3-1", "FIRE3", "4"),
    "Ag2O": ("CO2-H2O-Ag", "0.2", "1-4-1-2-4", "50-500", "3-1", "FIRE3", "4"),
    "PbO2": ("CO2-H2O-PbO", "0.2", "1-4-1-2-2", "50-500", "3-1", "FIRE3", "4"),
    "Fe2O3": ("CO2-H2O-Fe", "0.2", "1-4-1-2-4", "50-600", "3-1", "FIRE3", "4"),
    "HNO3": ("CO2-H2O-NO2", "0.2", "1-4-1-2-2", "0-100", "3-4", "FALSE", "2"),
    "NO2": ("CO2-H2O-NO", "0.2", "1-4-1-2-2", "0-100", "3-3", "FALSE", "2"),
    "KMnO4": ("CO2-H2O-MnO2-KOH", "0.2", "1-2-1-2-2-2", "0-100", "3-4", "FALSE", "2"),
    "H2O2": ("CO2-H2O", "0.2", "1-2-1-2", "0-100", "3-4", "BUBBLE2", "2"),
}


ACID_TEMPLATES = {
    "Perchloric acid": [
        ("NaOH", "NaClO4-H2O"),
        ("KOH", "KClO4-H2O"),
        ("NH3", "NH4ClO4"),
        ("CaOH2", "Ca(ClO4)2-H2O"),
        ("BaOH2", "Ba(ClO4)2-H2O"),
        ("Ag2O", "AgClO4-H2O"),
        ("CuO", "Cu(ClO4)2-H2O"),
        ("Zn", "Zn(ClO4)2-H2"),
        ("NaHCO3", "NaClO4-CO2-H2O"),
        ("Na2CO3", "NaClO4-CO2-H2O"),
    ],
    "Chloric acid": [
        ("NaOH", "NaClO3-H2O"),
        ("KOH", "KClO3-H2O"),
        ("NH3", "NH4ClO3"),
        ("CaOH2", "Ca(ClO3)2-H2O"),
        ("BaOH2", "Ba(ClO3)2-H2O"),
        ("Ag2O", "AgClO3-H2O"),
        ("CuO", "Cu(ClO3)2-H2O"),
        ("Zn", "Zn(ClO3)2-H2"),
        ("NaHCO3", "NaClO3-CO2-H2O"),
        ("Na2CO3", "NaClO3-CO2-H2O"),
    ],
    "Hypochlorous acid": [
        ("NaOH", "NaClO-H2O"),
        ("KOH", "KClO-H2O"),
        ("NH3", "NH4ClO"),
        ("CaOH2", "Ca(ClO)2-H2O"),
        ("BaOH2", "Ba(ClO)2-H2O"),
        ("Ag2O", "AgClO-H2O"),
        ("CuO", "Cu(ClO)2-H2O"),
        ("Zn", "Zn(ClO)2-H2"),
        ("NaHCO3", "NaClO-CO2-H2O"),
        ("Na2CO3", "NaClO-CO2-H2O"),
    ],
    "Nitrous acid": [
        ("NaOH", "NaNO2-H2O"),
        ("KOH", "KNO2-H2O"),
        ("NH3", "NH4NO2"),
        ("CaOH2", "Ca(NO2)2-H2O"),
        ("BaOH2", "Ba(NO2)2-H2O"),
        ("Ag2O", "AgNO2-H2O"),
        ("CuO", "Cu(NO2)2-H2O"),
        ("Zn", "Zn(NO2)2-H2"),
        ("NaHCO3", "NaNO2-CO2-H2O"),
        ("Na2CO3", "NaNO2-CO2-H2O"),
    ],
    "Carbonic acid": [
        ("NaOH", "NaHCO3-H2O"),
        ("KOH", "KHCO3-H2O"),
        ("NH3", "NH4HCO3"),
        ("CaOH2", "CaCO3-H2O"),
        ("BaOH2", "BaCO3-H2O"),
        ("Ag2O", "Ag2CO3-H2O"),
        ("CuO", "CuCO3-H2O"),
        ("Zn", "ZnCO3-H2"),
        ("NaHCO3", "Na2CO3-H2O"),
        ("Na2CO3", "NaHCO3"),
    ],
    "Bromic acid": [
        ("NaOH", "NaBrO3-H2O"),
        ("KOH", "KBrO3-H2O"),
        ("NH3", "NH4BrO3"),
        ("CaOH2", "Ca(BrO3)2-H2O"),
        ("BaOH2", "Ba(BrO3)2-H2O"),
        ("Ag2O", "AgBrO3-H2O"),
        ("CuO", "Cu(BrO3)2-H2O"),
        ("Zn", "Zn(BrO3)2-H2"),
        ("NaHCO3", "NaBrO3-CO2-H2O"),
        ("Na2CO3", "NaBrO3-CO2-H2O"),
    ],
    "Hydroiodic acid": [
        ("NaOH", "NaI-H2O"),
        ("KOH", "KI-H2O"),
        ("NH3", "NH4I"),
        ("CaOH2", "CaI2-H2O"),
        ("BaOH2", "BaI2-H2O"),
        ("Ag2O", "AgI-H2O"),
        ("CuO", "CuI2-H2O"),
        ("Zn", "ZnI2-H2"),
        ("NaHCO3", "NaI-CO2-H2O"),
        ("Na2CO3", "NaI-CO2-H2O"),
    ],
}


REACTIVE_CHLORIDES = {
    "Thionyl chloride": ("SO2-HCl", "SOCl2"),
    "Sulfuryl chloride": ("H2SO4-HCl", "SO2Cl2"),
    "Silicon tetrachloride": ("SiO2-HCl", "SiCl4"),
    "Germanium tetrachloride": ("GeO2-HCl", "GeCl4"),
    "Titanium tetrachloride": ("TiO2-HCl", "TiCl4"),
    "Chromyl chloride": ("Cr2O3-HCl", "CrO2Cl2"),
}


FLUORO_INERT = {
    "CF4": "CH4",
    "C2F6": "C2H6",
    "C3F8": "C3H8",
    "C4F10": "C4H10",
}


HALO_HYDROGENATED = {
    "Dichloromethane",
    "Trichloroethylene",
    "Tetrachloroethylene",
    "C2H3Cl",
    "CHF3",
    "C2HF5",
    "CHCl2F",
    "C2H4F2",
    "C2H3F3",
    "C2H2F4",
}


def organic_rows(token):
    rows = []
    for partner, spec in ORGANIC_OXIDATION.items():
        products, speed, modulus, temps, states, effect, rek = spec
        if token in {"Diethylamine", "Formamide", "Acetonitrile"}:
            products = products.replace("CO2-H2O", "CO2-H2O-N2")
        if token in HALO_HYDROGENATED:
            if "HF" not in products and any(x in FORMULAS[token] for x in ("F",)):
                products = f"{products}-HF"
            if "HCl" not in products and any(x in FORMULAS[token] for x in ("Cl",)):
                products = f"{products}-HCl"
        rows.append(rdb_row(make_name(token, partner), f"{token}-{partner}", products, speed, modulus, temps, states, effect, rek))
    return rows


def acid_rows(token):
    rows = []
    for partner, products in ACID_TEMPLATES[token]:
        states = "3-4" if partner not in {"NH3", "Zn"} else "3-3"
        rows.append(rdb_row(make_name(token, partner), f"{token}-{partner}", products, "0.3", "1-1-1", "0-100", states))
    return rows


def chloride_rows(token):
    oxide_products, formula = REACTIVE_CHLORIDES[token]
    templates = [
        ("H2O", oxide_products),
        ("NaOH", oxide_products.replace("HCl", "NaCl-H2O")),
        ("KOH", oxide_products.replace("HCl", "KCl-H2O")),
        ("NH3", f"{formula}·NH3-NH4Cl"),
        ("CH3OH", f"{formula}(OCH3)-HCl"),
        ("C2H5OH", f"{formula}(OC2H5)-HCl"),
        ("H2S", oxide_products.replace("HCl", "HCl-S")),
        ("HF", formula.replace("Cl", "F", 1) + "-HCl"),
        ("CH3NH2", f"{formula}·NH2CH3-HCl"),
        ("C2H5NH2", f"{formula}·NHC2H5-HCl"),
    ]
    rows = []
    for partner, products in templates:
        states = "3-4" if partner in {"H2O", "NaOH", "KOH", "CH3OH", "C2H5OH", "HF"} else "3-3"
        rows.append(rdb_row(make_name(token, partner), f"{token}-{partner}", products, "0.3", "1-1-1", "0-100", states))
    return rows


def perfluoro_rows(token):
    hydro = FLUORO_INERT[token]
    templates = [
        ("H2O", "CO2-HF"),
        ("NaOH", "NaF-CO2-H2O"),
        ("KOH", "KF-CO2-H2O"),
        ("CaOH2", "CaF2-CO2-H2O"),
        ("H2", f"{hydro}-HF"),
        ("CuO", "CO2-Cu-HF"),
        ("Ag2O", "CO2-Ag-HF"),
        ("PbO2", "CO2-PbO-HF"),
        ("Fe2O3", "CO2-Fe-HF"),
        ("H2O2", "CO2-HF-H2O"),
    ]
    rows = []
    for partner, products in templates:
        states = "3-4" if partner in {"H2O", "NaOH", "KOH", "CaOH2", "H2O2"} else "3-3"
        rows.append(rdb_row(make_name(token, partner), f"{token}-{partner}", products, "0.2", "1-1-1", "50-600", states))
    return rows


def main():
    rows = []
    targets = [
        "Hexane", "Heptane", "Octane", "Nonane", "Decane",
        "1-Pentene", "1-Hexene",
        "1-Propanol", "2-Propanol", "1-Butanol", "2-Butanol", "1-Pentanol", "1-Hexanol", "1-Heptanol", "1-Octanol",
        "Propylene glycol", "Methyl ethyl ketone", "Caprylic acid", "Propyl acetate", "Butyl acetate",
        "Diethylamine", "Formamide", "Acetonitrile", "Ethylbenzene", "Styrene",
        "Dichloromethane", "Trichloroethylene", "Tetrachloroethylene",
        "Perchloric acid", "Chloric acid", "Hypochlorous acid", "Nitrous acid", "Carbonic acid", "Bromic acid", "Hydroiodic acid",
        "Thionyl chloride", "Sulfuryl chloride", "Silicon tetrachloride", "Germanium tetrachloride", "Titanium tetrachloride", "Chromyl chloride",
        "C3H8O", "C2H3Cl", "CF4", "C2F6", "C3F8", "CHF3", "C2HF5", "CHCl2F", "C2H4F2", "C2H3F3", "C2H2F4", "C4F10",
    ]

    for token in targets:
        if token in ACID_TEMPLATES:
            rows.extend(acid_rows(token))
        elif token in REACTIVE_CHLORIDES:
            rows.extend(chloride_rows(token))
        elif token in FLUORO_INERT:
            rows.extend(perfluoro_rows(token))
        else:
            rows.extend(organic_rows(token))

    appended = add_rows("rdb.csv", rows)
    print(f"appended={appended}")


if __name__ == "__main__":
    main()
