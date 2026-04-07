#!/usr/bin/env python3
import csv
from pathlib import Path


BASE = Path("/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV")

DISPLAY_ALIAS_OVERRIDES = {
    "1-Butene": {"1-Butene", "C4H8"},
    "Propylene": {"Propylene", "C3H6"},
    "Formaldehyde": {"Formaldehyde", "CH2O"},
    "Ammonia": {"Ammonia", "NH3"},
    "Nitric oxide": {"Nitric oxide", "NO"},
    "Nitrogen dioxide": {"Nitrogen dioxide", "NO2"},
    "Nitrous oxide": {"Nitrous oxide", "N2O"},
    "Dimethyl ether": {"Dimethyl ether", "CH3OCH3"},
    "Methylamine": {"Methylamine", "CH3NH2"},
    "Ethylamine": {"Ethylamine", "C2H5NH2"},
    "Dimethylamine": {"Dimethylamine", "(CH3)2NH"},
    "Trimethylamine": {"Trimethylamine", "(CH3)3N"},
    "Triethylamine": {"Triethylamine", "(C2H5)3N"},
    "Bromotrifluoromethane": {"Bromotrifluoromethane", "CBrF3"},
    "Chlorodifluoromethane": {"Chlorodifluoromethane", "CHClF2"},
    "Dichlorodifluoromethane": {"Dichlorodifluoromethane", "CCl2F2"},
    "Trichlorofluoromethane": {"Trichlorofluoromethane", "CCl3F"},
    "Trichlorotrifluoroethane": {"Trichlorotrifluoroethane", "C2Cl3F3"},
    "Ca(OH)2": {"Ca(OH)2", "CaOH2"},
    "Ethylene": {"Ethylene", "C2H4"},
}


def load_rows(path):
    with path.open(newline="", encoding="utf-8-sig") as f:
        return list(csv.reader(f))


def load_existing_pairs():
    pairs = set()
    for name in ("rdb.csv", "ordb.csv"):
        with (BASE / name).open(newline="", encoding="utf-8-sig") as f:
            for row in csv.DictReader(f):
                reactants = (row.get("Reactants") or "").strip()
                products = (row.get("Products") or "").strip()
                if reactants or products:
                    pairs.add((reactants, products))
    return pairs


def load_aliases():
    aliases = {}
    for name in ("cdb.csv", "cdb-free.csv", "odb.csv"):
        for row in load_rows(BASE / name):
            if not row:
                continue
            if row[0].strip() in ("", "Chemical"):
                continue
            if name == "odb.csv":
                fields = row[:8]
            else:
                fields = [row[i] for i in (0, 4, 5, 6) if i < len(row)]
            tokens = {cell.strip() for cell in fields if cell.strip()}
            for token in tokens:
                aliases.setdefault(token, set()).update(tokens)
    for key, tokens in DISPLAY_ALIAS_OVERRIDES.items():
        aliases.setdefault(key, set()).update(tokens)
        for token in tokens:
            aliases.setdefault(token, set()).update(tokens)
    return aliases


def load_existing_rows():
    rows = []
    for name in ("rdb.csv", "ordb.csv"):
        with (BASE / name).open(newline="", encoding="utf-8-sig") as f:
            for row in csv.DictReader(f):
                rows.append(
                    {
                        "file": name,
                        "name": (row.get("Name") or "").strip(),
                        "reactants": (row.get("Reactants") or "").strip(),
                        "products": (row.get("Products") or "").strip(),
                    }
                )
    return rows


def find_reactions_for_token(rows, token):
    matches = []
    for row in rows:
        haystack = f"{row['reactants']}-{row['products']}"
        if token in haystack:
            matches.append(row)
    return matches


def main():
    aliases = load_aliases()
    pairs = load_existing_pairs()
    rows = load_existing_rows()
    print(f"alias_tokens={len(aliases)}")
    print(f"existing_reaction_pairs={len(pairs)}")
    for sample in ("1-Butene", "Propylene", "Formaldehyde", "Dimethylamine", "Silane", "Sulfur hexafluoride"):
        vals = sorted(aliases.get(sample, {sample}))
        print(f"{sample}: {vals[:12]}")
    for sample in ("1-Butene", "Ammonia", "Formaldehyde", "Propylene", "Methylamine", "Silane"):
        sample_aliases = sorted(aliases.get(sample, {sample}))
        print(f"\n[{sample}] aliases={sample_aliases}")
        seen = []
        for token in sample_aliases:
            seen.extend(find_reactions_for_token(rows, token))
        uniq = {(row["file"], row["name"], row["reactants"], row["products"]) for row in seen}
        print(f"reaction_hits={len(uniq)}")
        for file_name, name, reactants, products in sorted(uniq)[:8]:
            print(f"  {file_name}: {name} {reactants} -> {products}")


if __name__ == "__main__":
    main()
