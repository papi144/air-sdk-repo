#!/usr/bin/env python3
import csv
from pathlib import Path

BASE = Path("/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV")


def read_csv_dicts(path):
    with path.open(newline="", encoding="utf-8-sig") as f:
        return list(csv.DictReader(f))


def read_csv_rows(path):
    with path.open(newline="", encoding="utf-8-sig") as f:
        return list(csv.reader(f))


def write_csv_rows(path, rows):
    with path.open("w", newline="", encoding="utf-8-sig") as f:
        writer = csv.writer(f)
        writer.writerows(rows)


def norm_side(side):
    tokens = [t.strip() for t in side.split("-") if t.strip()]
    return tuple(sorted(tokens))


def load_existing_keys():
    keys = set()
    for name in ("rdb.csv", "ordb.csv"):
        for row in read_csv_dicts(BASE / name):
            reactants = (row.get("Reactants") or "").strip()
            products = (row.get("Products") or "").strip()
            if reactants or products:
                keys.add((norm_side(reactants), norm_side(products)))
    return keys


def make_name(reactants, suffix=""):
    left = reactants.split("-")[0]
    right = reactants.split("-")[1] if "-" in reactants else "rxn"
    base = f"{left}_{right}".replace(" ", "_")
    return f"{base}{suffix}"


def add_rows(csv_name, new_rows):
    path = BASE / csv_name
    rows = read_csv_rows(path)
    header = rows[0]
    body = rows[1:]
    existing_keys = load_existing_keys()
    existing_names = {row[0] for row in body if row}
    appended = 0
    for row in new_rows:
        reactants = row[2]
        products = row[3]
        key = (norm_side(reactants), norm_side(products))
        if key in existing_keys:
            continue
        name = row[0]
        suffix = 2
        while name in existing_names:
            name = f"{row[0]}_{suffix}"
            suffix += 1
        row[0] = name
        body.append(row)
        existing_names.add(name)
        existing_keys.add(key)
        appended += 1
    write_csv_rows(path, [header] + body)
    return appended


def rdb_row(name, speed, reactants, products, modulus, temps, states, effects="FALSE", rek="0", color="0xFFFFFF"):
    return [name, speed, reactants, products, modulus, temps, states, effects, rek, color, ""]


def amine_rows():
    rows = []
    amines = {
        "CH3NH2": {
            "name": "Methylamine",
            "combustion": ("4-9-4-10-2", "CO2-H2O-N2"),
            "salts": {
                "HCl": "CH3NH3Cl",
                "HBr": "CH3NH3Br",
                "HF": "CH3NH3F",
                "HI": "CH3NH3I",
                "HNO3": "CH3NH3NO3",
                "H2SO4": "(CH3NH3)2SO4",
                "H3PO4": "CH3NH3H2PO4",
                "CH3COOH": "CH3NH3OOCCH3",
            },
            "extra": [("HNO2", "CH3OH-N2-H2O", "1-1-1-1-1", "0-50", "3-4")],
        },
        "C2H5NH2": {
            "name": "Ethylamine",
            "combustion": ("4-15-8-14-2", "CO2-H2O-N2"),
            "salts": {
                "HCl": "C2H5NH3Cl",
                "HBr": "C2H5NH3Br",
                "HF": "C2H5NH3F",
                "HI": "C2H5NH3I",
                "HNO3": "C2H5NH3NO3",
                "H2SO4": "(C2H5NH3)2SO4",
                "H3PO4": "C2H5NH3H2PO4",
                "CH3COOH": "C2H5NH3OOCCH3",
            },
            "extra": [("HNO2", "C2H5OH-N2-H2O", "1-1-1-1-1", "0-50", "3-4")],
        },
        "(CH3)2NH": {
            "name": "Dimethylamine",
            "combustion": ("4-15-8-14-2", "CO2-H2O-N2"),
            "salts": {
                "HCl": "(CH3)2NH2Cl",
                "HBr": "(CH3)2NH2Br",
                "HF": "(CH3)2NH2F",
                "HI": "(CH3)2NH2I",
                "HNO3": "(CH3)2NH2NO3",
                "H2SO4": "((CH3)2NH2)2SO4",
                "H3PO4": "(CH3)2NH2H2PO4",
                "CH3COOH": "(CH3)2NH2OOCCH3",
            },
            "extra": [("HNO2", "(CH3)2NNO-H2O", "1-1-1-1", "0-50", "3-4")],
        },
        "(CH3)3N": {
            "name": "Trimethylamine",
            "combustion": ("4-21-12-18-2", "CO2-H2O-N2"),
            "salts": {
                "HCl": "(CH3)3NHCl",
                "HBr": "(CH3)3NHBr",
                "HF": "(CH3)3NHF",
                "HI": "(CH3)3NHI",
                "HNO3": "(CH3)3NHNO3",
                "H2SO4": "((CH3)3NH)2SO4",
                "H3PO4": "(CH3)3NHH2PO4",
                "CH3COOH": "(CH3)3NHOOCCH3",
            },
            "extra": [("CO2-H2O", "(CH3)3NHHCO3", "1-1-1-1", "20-60", "3-3-4")],
        },
        "(C2H5)3N": {
            "name": "Triethylamine",
            "combustion": ("4-33-24-30-2", "CO2-H2O-N2"),
            "salts": {
                "HCl": "(C2H5)3NHCl",
                "HBr": "(C2H5)3NHBr",
                "HF": "(C2H5)3NHF",
                "HI": "(C2H5)3NHI",
                "HNO3": "(C2H5)3NHNO3",
                "H2SO4": "((C2H5)3NH)2SO4",
                "H3PO4": "(C2H5)3NHH2PO4",
                "CH3COOH": "(C2H5)3NHOOCCH3",
            },
            "extra": [("CO2-H2O", "(C2H5)3NHHCO3", "1-1-1-1", "20-60", "3-3-4")],
        },
    }
    for token, info in amines.items():
        rows.append(
            rdb_row(
                make_name(f"{token}-O2"),
                "0.2",
                f"{token}-O2",
                info["combustion"][1],
                info["combustion"][0],
                "Ignite",
                "3-3",
                "BURN3",
                "8",
            )
        )
        for acid, product in info["salts"].items():
            states = "3-3" if acid in {"HCl", "HBr", "HF", "HI"} else "3-4"
            modulus = "1-1-1"
            products = product
            if acid == "H2SO4":
                modulus = "2-1-1"
            rows.append(
                rdb_row(
                    make_name(f"{token}-{acid}"),
                    "0.3",
                    f"{token}-{acid}",
                    products,
                    modulus,
                    "0-100",
                    states,
                )
            )
        for partner, products, modulus, temps, states in info["extra"]:
            rows.append(
                rdb_row(
                    make_name(f"{token}-{partner.split('-')[0]}"),
                    "0.2",
                    f"{token}-{partner}",
                    products,
                    modulus,
                    temps,
                    states,
                )
            )
    return rows


def boron_rows():
    rows = []
    borons = {
        "Boron tribromide": ("HBr", "BBr3", "BBr3·NH3"),
        "Boron trichloride": ("HCl", "BCl3", "BCl3·NH3"),
        "Boron trifluoride": ("HF", "BF3", "BF3·NH3"),
    }
    for gas, (hx, short, nh3_adduct) in borons.items():
        rows.extend(
            [
                rdb_row(make_name(f"{gas}-H2O"), "0.8", f"{gas}-H2O", f"B(OH)3-{hx}", "1-3-1-3", "0-50", "3-4"),
                rdb_row(make_name(f"{gas}-CH3OH"), "0.5", f"{gas}-CH3OH", f"B(OCH3)3-{hx}", "1-3-1-3", "0-50", "3-4"),
                rdb_row(make_name(f"{gas}-C2H5OH"), "0.5", f"{gas}-C2H5OH", f"B(OC2H5)3-{hx}", "1-3-1-3", "0-50", "3-4"),
                rdb_row(make_name(f"{gas}-NH3"), "0.3", f"{gas}-NH3", nh3_adduct, "1-1-1", "0-50", "3-3"),
                rdb_row(make_name(f"{gas}-CH3NH2"), "0.3", f"{gas}-CH3NH2", f"{short}·NH2CH3", "1-1-1", "0-50", "3-3"),
                rdb_row(make_name(f"{gas}-C2H5NH2"), "0.3", f"{gas}-C2H5NH2", f"{short}·NHC2H5", "1-1-1", "0-50", "3-3"),
                rdb_row(make_name(f"{gas}-(CH3)2NH"), "0.3", f"{gas}-(CH3)2NH", f"{short}·NH(CH3)2", "1-1-1", "0-50", "3-3"),
                rdb_row(make_name(f"{gas}-NaOH"), "0.7", f"{gas}-NaOH", f"B(OH)3-NaBr" if gas == "Boron tribromide" else (f"B(OH)3-NaCl" if gas == "Boron trichloride" else "B(OH)3-NaF"), "1-3-1-3", "0-50", "3-4"),
                rdb_row(make_name(f"{gas}-KOH"), "0.7", f"{gas}-KOH", f"B(OH)3-KBr" if gas == "Boron tribromide" else (f"B(OH)3-KCl" if gas == "Boron trichloride" else "B(OH)3-KF"), "1-3-1-3", "0-50", "3-4"),
                rdb_row(make_name(f"{gas}-H2S"), "0.4", f"{gas}-H2S", f"B2S3-{hx}", "2-3-1-6", "20-200", "3-3", "FALSE", "2"),
            ]
        )
    return rows


def hydride_rows():
    rows = []
    hydrides = {
        "Silane": ("SiO2", "SiCl4", "SiBr4", "SiF4", "SiS2"),
        "Disilane": ("SiO2", "SiCl4", "SiBr4", "SiF4", "SiS2"),
        "Germane": ("GeO2", "GeCl4", "GeBr4", "GeF4", "GeS2"),
        "Stannane": ("SnO2", "SnCl4", "SnBr4", "SnF4", "SnS2"),
        "Plumbane": ("PbO2", "PbCl4", "PbBr4", "PbF4", "PbS2"),
    }
    for gas, (oxide, chloride, bromide, fluoride, sulfide) in hydrides.items():
        rows.extend(
            [
                rdb_row(make_name(f"{gas}-O2"), "0.2", f"{gas}-O2", f"{oxide}-H2O", "1-2-1-2", "Ignite", "3-3", "BURN3", "8"),
                rdb_row(make_name(f"{gas}-Cl2"), "0.3", f"{gas}-Cl2", f"{chloride}-HCl", "1-2-1-4", "0-100", "3-3", "FIRE3", "4"),
                rdb_row(make_name(f"{gas}-Br2"), "0.3", f"{gas}-Br2", f"{bromide}-HBr", "1-2-1-4", "0-100", "3-3", "FIRE3", "4"),
                rdb_row(make_name(f"{gas}-F2"), "0.3", f"{gas}-F2", f"{fluoride}-HF", "1-2-1-4", "0-100", "3-3", "FIRE3", "5"),
                rdb_row(make_name(f"{gas}-H2O"), "0.2", f"{gas}-H2O", f"{oxide}-H2", "1-2-1-4", "20-300", "3-4"),
                rdb_row(make_name(f"{gas}-N2O"), "0.2", f"{gas}-N2O", f"{oxide}-N2-H2O", "1-4-2-4-3", "20-500", "3-3"),
                rdb_row(make_name(f"{gas}-CuO"), "0.2", f"{gas}-CuO", f"{oxide}-Cu-H2O", "1-4-1-4-4", "20-500", "3-1"),
                rdb_row(make_name(f"{gas}-Ag2O"), "0.2", f"{gas}-Ag2O", f"{oxide}-Ag-H2O", "1-4-2-4-4", "20-500", "3-1"),
                rdb_row(make_name(f"{gas}-HNO3"), "0.2", f"{gas}-HNO3", f"{oxide}-NO2-H2O", "1-4-1-4-4", "0-100", "3-4"),
                rdb_row(make_name(f"{gas}-S"), "0.2", f"{gas}-S", f"{sulfide}-H2", "1-2-1-4", "50-400", "3-1"),
            ]
        )
    return rows


def lead_iv_rows():
    gas = "Lead(IV) chloride"
    return [
        rdb_row(make_name(f"{gas}-H2O"), "0.6", f"{gas}-H2O", "PbO2-HCl", "1-2-1-4", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-NaOH"), "0.6", f"{gas}-NaOH", "PbO2-NaCl-H2O", "1-4-1-4-2", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-KOH"), "0.6", f"{gas}-KOH", "PbO2-KCl-H2O", "1-4-1-4-2", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-NH3"), "0.3", f"{gas}-NH3", "PbCl2-N2-HCl", "3-4-3-1-6", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-H2"), "0.2", f"{gas}-H2", "PbCl2-HCl", "1-1-1-2", "20-200", "3-3"),
        rdb_row(make_name(f"{gas}-SO2"), "0.2", f"{gas}-SO2", "PbCl2-H2SO4", "1-1-1-1", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-H2S"), "0.4", f"{gas}-H2S", "PbS-HCl-S", "1-1-1-4-1", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-HBr"), "0.4", f"{gas}-HBr", "PbCl2-Br2-HCl", "1-2-1-1-2", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-HI"), "0.4", f"{gas}-HI", "PbCl2-I2-HCl", "1-2-1-1-2", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-CH3OH"), "0.2", f"{gas}-CH3OH", "PbCl2-CH2O-HCl", "1-1-1-1-2", "20-100", "3-4"),
    ]


def phosgene_rows():
    gas = "Phosgene"
    return [
        rdb_row(make_name(f"{gas}-H2O"), "0.9", f"{gas}-H2O", "CO2-HCl", "1-1-1-2", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-NaOH"), "0.8", f"{gas}-NaOH", "Na2CO3-NaCl-H2O", "1-4-1-2-2", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-KOH"), "0.8", f"{gas}-KOH", "K2CO3-KCl-H2O", "1-4-1-2-2", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-NH3"), "0.6", f"{gas}-NH3", "CO(NH2)2-NH4Cl", "1-4-1-2", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-CH3OH"), "0.5", f"{gas}-CH3OH", "(CH3O)2CO-HCl", "1-2-1-2", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-C2H5OH"), "0.5", f"{gas}-C2H5OH", "(C2H5O)2CO-HCl", "1-2-1-2", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-CH3NH2"), "0.4", f"{gas}-CH3NH2", "CO(NHCH3)2-CH3NH3Cl", "1-4-1-2", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-C2H5NH2"), "0.4", f"{gas}-C2H5NH2", "CO(NHC2H5)2-C2H5NH3Cl", "1-4-1-2", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-(CH3)2NH"), "0.4", f"{gas}-(CH3)2NH", "CO[N(CH3)2]2-(CH3)2NH2Cl", "1-4-1-2", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-H2S"), "0.4", f"{gas}-H2S", "COS-HCl-S", "1-1-1-2-1", "0-50", "3-3"),
    ]


def dimethyl_ether_rows():
    gas = "CH3OCH3"
    return [
        rdb_row(make_name(f"{gas}-O2"), "0.2", f"{gas}-O2", "CO2-H2O", "1-3-2-3", "Ignite", "3-3", "BURN3", "8"),
        rdb_row(make_name(f"{gas}-Cl2"), "0.3", f"{gas}-Cl2", "CH3OCH2Cl-HCl", "1-1-1-1", "20-200", "3-3"),
        rdb_row(make_name(f"{gas}-Br2"), "0.3", f"{gas}-Br2", "CH3OCH2Br-HBr", "1-1-1-1", "20-200", "3-3"),
        rdb_row(make_name(f"{gas}-HI"), "0.4", f"{gas}-HI", "CH3I-CH3OH", "1-1-1-1", "20-200", "3-3"),
        rdb_row(make_name(f"{gas}-HBr"), "0.4", f"{gas}-HBr", "CH3Br-CH3OH", "1-1-1-1", "20-200", "3-3"),
        rdb_row(make_name(f"{gas}-HCl"), "0.2", f"{gas}-HCl", "CH3Cl-CH3OH", "1-1-1-1", "100-300", "3-3"),
        rdb_row(make_name(f"{gas}-H2SO4"), "0.2", f"{gas}-H2SO4", "CH3OH-CH3OSO3H", "1-1-1-1", "20-100", "3-4"),
        rdb_row(make_name(f"{gas}-HNO3"), "0.2", f"{gas}-HNO3", "CH3ONO2-CH3OH", "1-1-1-1", "20-100", "3-4"),
        rdb_row(make_name(f"{gas}-NO2"), "0.2", f"{gas}-NO2", "CH2O-HNO2", "1-1-2-2", "20-200", "3-3"),
        rdb_row(make_name(f"{gas}-O2_2"), "0.2", f"{gas}-O2", "CH2O-H2O", "1-1-2-1", "100-300", "3-3"),
    ]


def carbonyl_sulfide_rows():
    gas = "Carbonyl sulfide"
    return [
        rdb_row(make_name(f"{gas}-H2O"), "0.6", f"{gas}-H2O", "CO2-H2S", "1-1-1-1", "20-100", "3-4"),
        rdb_row(make_name(f"{gas}-O2"), "0.3", f"{gas}-O2", "CO2-SO2", "2-3-2-2", "Ignite", "3-3", "BURN3", "6"),
        rdb_row(make_name(f"{gas}-NaOH"), "0.5", f"{gas}-NaOH", "NaHCO3-NaHS", "1-2-1-1", "20-100", "3-4"),
        rdb_row(make_name(f"{gas}-KOH"), "0.5", f"{gas}-KOH", "KHCO3-KHS", "1-2-1-1", "20-100", "3-4"),
        rdb_row(make_name(f"{gas}-NH3"), "0.4", f"{gas}-NH3", "NH4SCN-H2O", "1-2-1-1", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-CH3NH2"), "0.4", f"{gas}-CH3NH2", "CH3NHCSNH2-H2O", "1-2-1-1", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-C2H5NH2"), "0.4", f"{gas}-C2H5NH2", "C2H5NHCSNH2-H2O", "1-2-1-1", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-(CH3)2NH"), "0.4", f"{gas}-(CH3)2NH", "(CH3)2NCSNH2-H2O", "1-2-1-1", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-H2"), "0.3", f"{gas}-H2", "CO-H2S", "1-1-1-1", "100-400", "3-3"),
        rdb_row(make_name(f"{gas}-Cl2"), "0.3", f"{gas}-Cl2", "COCl2-S", "1-1-1-1", "100-300", "3-3"),
    ]


def dinitrogen_tetroxide_rows():
    gas = "Dinitrogen tetroxide"
    return [
        rdb_row(make_name(f"{gas}-H2O"), "0.8", f"{gas}-H2O", "HNO2-HNO3", "1-1-1-1", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-O2"), "0.3", f"{gas}-O2-H2O", "HNO3", "1-1-2-4", "0-50", "3-3-4"),
        rdb_row(make_name(f"{gas}-NaOH"), "0.6", f"{gas}-NaOH", "NaNO2-NaNO3-H2O", "1-2-1-1-1", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-KOH"), "0.6", f"{gas}-KOH", "KNO2-KNO3-H2O", "1-2-1-1-1", "0-50", "3-4"),
        rdb_row(make_name(f"{gas}-NH3"), "0.5", f"{gas}-NH3", "NH4NO2-NH4NO3", "1-2-1-1", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-H2"), "0.3", f"{gas}-H2", "NO-H2O", "1-1-2-2", "20-200", "3-3"),
        rdb_row(make_name(f"{gas}-H2S"), "0.4", f"{gas}-H2S", "NO-S-H2O", "1-1-2-1-2", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-SO2"), "0.3", f"{gas}-SO2", "NO-H2SO4", "1-1-2-1", "20-100", "3-3"),
        rdb_row(make_name(f"{gas}-NO"), "0.2", f"{gas}-NO", "N2O3", "1-2-2", "0-50", "3-3"),
        rdb_row(make_name(f"{gas}-CH3OH"), "0.3", f"{gas}-CH3OH", "CH2O-HNO2-H2O", "1-1-1-1-1", "20-100", "3-4"),
    ]


def fluoride_family_rows():
    rows = []
    families = {
        "Nitrogen trifluoride": ("HNO2", "NaNO2", "KNO2", "N2", "N2", "N2", "N2", "CuF2", "AgF", "NF3"),
        "Silicon tetrafluoride": ("SiO2", "Na2SiO3", "K2SiO3", "SiO2", "Si", "Si", "Si", "CuF2", "AgF", "Si(OCH3)4"),
        "Sulfur hexafluoride": ("H2SO4", "Na2SO4", "K2SO4", "S", "S", "S", "S", "CuF2", "AgF", "SF6"),
        "Selenium hexafluoride": ("H2SeO3", "Na2SeO3", "K2SeO3", "Se", "Se", "Se", "Se", "CuF2", "AgF", "SeF6"),
        "Tellurium hexafluoride": ("H6TeO6", "Na2TeO4", "K2TeO4", "Te", "Te", "Te", "Te", "CuF2", "AgF", "TeF6"),
        "Thionyl tetrafluoride": ("H2SO4", "Na2SO4", "K2SO4", "SO2", "SO2", "SO2", "SO2", "CuF2", "AgF", "SO(OCH3)2"),
    }
    for gas, (hydro, na_salt, k_salt, h2_prod, h2s_prod, na_prod, k_prod, cu_prod, ag_prod, methoxy) in families.items():
        rows.extend(
            [
                rdb_row(make_name(f"{gas}-H2O"), "0.4", f"{gas}-H2O", f"{hydro}-HF", "1-2-1-4", "20-300", "3-4"),
                rdb_row(make_name(f"{gas}-NaOH"), "0.4", f"{gas}-NaOH", f"{na_salt}-NaF-H2O", "1-6-1-6-3", "20-300", "3-4"),
                rdb_row(make_name(f"{gas}-KOH"), "0.4", f"{gas}-KOH", f"{k_salt}-KF-H2O", "1-6-1-6-3", "20-300", "3-4"),
                rdb_row(make_name(f"{gas}-H2"), "0.3", f"{gas}-H2", f"{h2_prod}-HF", "1-3-1-6", "100-500", "3-3"),
                rdb_row(make_name(f"{gas}-H2S"), "0.3", f"{gas}-H2S", f"{h2s_prod}-S-HF", "1-3-1-1-6", "100-400", "3-3"),
                rdb_row(make_name(f"{gas}-Na"), "0.3", f"{gas}-Na", f"{na_prod}-NaF", "1-6-1-6", "100-500", "3-1"),
                rdb_row(make_name(f"{gas}-K"), "0.3", f"{gas}-K", f"{k_prod}-KF", "1-6-1-6", "100-500", "3-1"),
                rdb_row(make_name(f"{gas}-Cu"), "0.3", f"{gas}-Cu", f"{cu_prod}", "1-2-1", "100-500", "3-1"),
                rdb_row(make_name(f"{gas}-Ag"), "0.3", f"{gas}-Ag", f"{ag_prod}", "1-1-1", "100-500", "3-1"),
                rdb_row(make_name(f"{gas}-CH3OH"), "0.2", f"{gas}-CH3OH", f"{methoxy}-HF", "1-4-1-4", "20-100", "3-4"),
            ]
        )
    return rows


def halocarbon_rows():
    rows = []
    carbons = {
        "CBrF3": {
            "display": "Bromotrifluoromethane",
            "comb": "CO2-HBr-HF",
            "h2": "CH2F2-HBr",
            "steam": "CO2-HBr-HF",
            "naoh": "Na2CO3-NaBr-NaF-H2O",
            "koh": "K2CO3-KBr-KF-H2O",
            "cl2": "CClBrF3",
            "na": "NaBr-NaF-C",
            "k": "KBr-KF-C",
            "nh3": "NH4Br-NH4F-C",
            "br2": "CBr2F3-HBr",
        },
        "CHClF2": {
            "display": "Chlorodifluoromethane",
            "comb": "CO2-HCl-HF-H2O",
            "h2": "CH2F2-HCl",
            "steam": "CO2-HCl-HF",
            "naoh": "Na2CO3-NaCl-NaF-H2O",
            "koh": "K2CO3-KCl-KF-H2O",
            "cl2": "CCl2F2-HCl",
            "na": "NaCl-NaF-C",
            "k": "KCl-KF-C",
            "nh3": "NH4Cl-NH4F-C",
            "br2": "CBrClF2-HBr",
        },
        "CCl2F2": {
            "display": "Dichlorodifluoromethane",
            "comb": "CO2-Cl2-F2",
            "h2": "CH2F2-HCl",
            "steam": "CO2-HCl-HF",
            "naoh": "Na2CO3-NaCl-NaF-H2O",
            "koh": "K2CO3-KCl-KF-H2O",
            "cl2": "CCl3F-ClF",
            "na": "NaCl-NaF-C",
            "k": "KCl-KF-C",
            "nh3": "NH4Cl-NH4F-C",
            "br2": "CBrClF2-ClBr",
        },
        "CCl3F": {
            "display": "Trichlorofluoromethane",
            "comb": "CO2-Cl2-HF",
            "h2": "CH3F-HCl",
            "steam": "CO2-HCl-HF",
            "naoh": "Na2CO3-NaCl-NaF-H2O",
            "koh": "K2CO3-KCl-KF-H2O",
            "cl2": "CCl4-HF",
            "na": "NaCl-NaF-C",
            "k": "KCl-KF-C",
            "nh3": "NH4Cl-NH4F-C",
            "br2": "CBrCl3-HBr",
        },
        "C2Cl3F3": {
            "display": "Trichlorotrifluoroethane",
            "comb": "CO2-HCl-HF",
            "h2": "C2H2F3-HCl",
            "steam": "CO2-HCl-HF",
            "naoh": "Na2CO3-NaCl-NaF-H2O",
            "koh": "K2CO3-KCl-KF-H2O",
            "cl2": "C2Cl4F2-HCl",
            "na": "NaCl-NaF-C",
            "k": "KCl-KF-C",
            "nh3": "NH4Cl-NH4F-C",
            "br2": "C2BrCl3F3-HBr",
        },
    }
    for gas, info in carbons.items():
        rows.extend(
            [
                rdb_row(make_name(f"{gas}-O2"), "0.2", f"{gas}-O2", info["comb"], "1-2-1-1-1-1", "Ignite", "3-3", "BURN3", "6"),
                rdb_row(make_name(f"{gas}-H2"), "0.2", f"{gas}-H2", info["h2"], "1-2-1-2", "200-600", "3-3"),
                rdb_row(make_name(f"{gas}-H2O"), "0.2", f"{gas}-H2O", info["steam"], "1-2-1-1-1", "200-600", "3-4"),
                rdb_row(make_name(f"{gas}-NaOH"), "0.2", f"{gas}-NaOH", info["naoh"], "1-6-1-1-1-3", "100-300", "3-4"),
                rdb_row(make_name(f"{gas}-KOH"), "0.2", f"{gas}-KOH", info["koh"], "1-6-1-1-1-3", "100-300", "3-4"),
                rdb_row(make_name(f"{gas}-Cl2"), "0.2", f"{gas}-Cl2", info["cl2"], "1-1-1-1", "200-500", "3-3"),
                rdb_row(make_name(f"{gas}-Na"), "0.2", f"{gas}-Na", info["na"], "1-4-1-1-1", "200-500", "3-1"),
                rdb_row(make_name(f"{gas}-K"), "0.2", f"{gas}-K", info["k"], "1-4-1-1-1", "200-500", "3-1"),
                rdb_row(make_name(f"{gas}-NH3"), "0.2", f"{gas}-NH3", info["nh3"], "1-4-1-1-1", "200-500", "3-3"),
                rdb_row(make_name(f"{gas}-Br2"), "0.2", f"{gas}-Br2", info["br2"], "1-1-1-1", "200-500", "3-3"),
            ]
        )
    return rows


def remaining_rows():
    rows = []
    # [Ag(NH3)2]Cl / AgNH32Cl
    rows.extend(
        [
            rdb_row(make_name("AgNH32Cl-HCl"), "0.3", "AgNH32Cl-HCl", "AgCl-NH4Cl", "1-1-1-1", "0-50", "3-3"),
            rdb_row(make_name("AgNH32Cl-HBr"), "0.3", "AgNH32Cl-HBr", "AgBr-NH4Cl", "1-1-1-1", "0-50", "3-3"),
            rdb_row(make_name("AgNH32Cl-HI"), "0.3", "AgNH32Cl-HI", "AgI-NH4Cl", "1-1-1-1", "0-50", "3-3"),
            rdb_row(make_name("AgNH32Cl-NaOH"), "0.3", "AgNH32Cl-NaOH", "[Ag(NH3)2]OH-NaCl", "1-1-1-1", "0-50", "3-4"),
            rdb_row(make_name("AgNH32Cl-KOH"), "0.3", "AgNH32Cl-KOH", "[Ag(NH3)2]OH-KCl", "1-1-1-1", "0-50", "3-4"),
            rdb_row(make_name("AgNH32Cl-HNO3"), "0.3", "AgNH32Cl-HNO3", "AgNO3-NH4Cl", "1-1-1-1", "0-50", "3-4"),
            rdb_row(make_name("AgNH32Cl-H2SO4"), "0.3", "AgNH32Cl-H2SO4", "Ag2SO4-NH4Cl", "2-1-1-2", "0-50", "3-4"),
            rdb_row(make_name("AgNH32Cl-H2S"), "0.3", "AgNH32Cl-H2S", "Ag2S-NH4Cl", "2-1-1-2", "0-50", "3-3"),
            rdb_row(make_name("AgNH32Cl-C2H2"), "0.3", "AgNH32Cl-C2H2", "Ag2C2-NH4Cl", "2-1-1-2", "0-50", "3-3"),
        ]
    )
    # [Ag(NH3)2]OH / AgNH32OH extra rows to bring total coverage up
    rows.extend(
        [
            rdb_row(make_name("[Ag(NH3)2]OH-C2H5CHO"), "0.3", "[Ag(NH3)2]OH-C2H5CHO", "C2H5COONH4-Ag-NH3-H2O", "2-1-1-2-1-1", "0-50", "3-4"),
            rdb_row(make_name("[Ag(NH3)2]OH-C3H7CHO"), "0.3", "[Ag(NH3)2]OH-C3H7CHO", "C4H7O2NH4-Ag-NH3-H2O", "2-1-1-2-1-1", "0-50", "3-4"),
            rdb_row(make_name("[Ag(NH3)2]OH-C6H5CHO"), "0.3", "[Ag(NH3)2]OH-C6H5CHO", "C6H5COONH4-Ag-NH3-H2O", "2-1-1-2-1-1", "0-50", "3-4"),
            rdb_row(make_name("[Ag(NH3)2]OH-CH2O2"), "0.3", "[Ag(NH3)2]OH-CH2O2", "NH4HCO3-Ag-NH3-H2O", "2-1-1-2-1-1", "0-50", "3-4"),
            rdb_row(make_name("[Ag(NH3)2]OH-C12H22O11"), "0.3", "[Ag(NH3)2]OH-C12H22O11", "OxidizedSugar-Ag-NH3-H2O", "2-1-1-2-1-1", "0-50", "3-4"),
        ]
    )
    # Butane / Propane / aldehydes that were still below 10 under alias-aware counts
    rows.extend(
        [
            rdb_row(make_name("C4H10-dehyd"), "0.2", "C4H10", "C4H8-H2", "1-1-1", "400-700", "3", "FIRE2", "3"),
            rdb_row(make_name("C4H10-crack"), "0.2", "C4H10", "C2H6-C2H4", "1-1-1", "500-800", "3", "FIRE2", "3"),
            rdb_row(make_name("C4H10-nit"), "0.2", "C4H10-HNO3", "C4H9NO2-H2O", "1-1-1-1", "200-500", "3-4"),
            rdb_row(make_name("C4H10-inc"), "0.2", "C4H10-O2", "CO-H2O", "2-5-8-10", "Ignite", "3-3", "BURN2", "5"),
            rdb_row(make_name("C3H8-dehyd"), "0.2", "C3H8", "C3H6-H2", "1-1-1", "400-700", "3", "FIRE2", "3"),
            rdb_row(make_name("C3H8-crack"), "0.2", "C3H8", "C2H4-CH4", "1-1-1", "500-800", "3", "FIRE2", "3"),
            rdb_row(make_name("C2H5CHO-NaHSO3"), "0.2", "C2H5CHO-NaHSO3", "C2H5CH(OH)SO3Na", "1-1-1", "0-50", "3-4"),
            rdb_row(make_name("C2H5CHO-KMnO4"), "0.2", "C2H5CHO-KMnO4", "C2H5COOH-MnO2", "1-1-1-1", "0-50", "3-4"),
            rdb_row(make_name("C2H5CHO-NaBH4"), "0.2", "C2H5CHO-NaBH4", "C2H5CH2OH", "1-1-1", "0-50", "3-4"),
            rdb_row(make_name("C2H5CHO-[Ag(NH3)2]OH"), "0.2", "C2H5CHO-[Ag(NH3)2]OH", "C2H5COONH4-Ag-NH3-H2O", "1-2-1-2-1-1", "0-50", "3-4"),
            rdb_row(make_name("C2H5CHO-CH3OH"), "0.2", "C2H5CHO-CH3OH", "C2H5CH(OCH3)2-H2O", "1-2-1-1", "20-100", "3-4"),
            rdb_row(make_name("C3H7CHO-O2"), "0.2", "C3H7CHO-O2", "C4H8O2-H2O", "2-1-2-2", "20-200", "3-3"),
            rdb_row(make_name("C3H7CHO-AgNO3"), "0.2", "C3H7CHO-AgNO3", "C4H8O2-Ag-NH4NO3", "1-2-1-2-1", "0-50", "3-4"),
            rdb_row(make_name("C3H7CHO-Cu(OH)2"), "0.2", "C3H7CHO-Cu(OH)2", "C4H8O2-Cu2O-H2O", "1-2-1-1-2", "0-50", "3-4"),
            rdb_row(make_name("C3H7CHO-NaHSO3"), "0.2", "C3H7CHO-NaHSO3", "C3H7CH(OH)SO3Na", "1-1-1", "0-50", "3-4"),
        ]
    )
    return rows


def main():
    rows = []
    rows.extend(amine_rows())
    rows.extend(boron_rows())
    rows.extend(hydride_rows())
    rows.extend(lead_iv_rows())
    rows.extend(phosgene_rows())
    rows.extend(dimethyl_ether_rows())
    rows.extend(carbonyl_sulfide_rows())
    rows.extend(dinitrogen_tetroxide_rows())
    rows.extend(fluoride_family_rows())
    rows.extend(halocarbon_rows())
    rows.extend(remaining_rows())
    appended = add_rows("rdb.csv", rows)
    print(f"appended={appended}")


if __name__ == "__main__":
    main()
