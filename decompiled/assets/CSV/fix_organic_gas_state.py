#!/usr/bin/env python3
import csv, os

BASE = '/home/codespace/chlab/decompiled/assets/CSV'

def fix_gas_states():
    # Read cdb.csv and cdb-free.csv, fix State for organic compounds that are actually gases
    for fname in ['cdb.csv', 'cdb-free.csv']:
        filepath = os.path.join(BASE, fname)
        with open(filepath, 'r', encoding='utf-8-sig') as f:
            rows = list(csv.reader(f))
        header = rows[0]
        out_rows = [header]
        chem_idx = 0
        type_idx = 1
        state_idx = 2
        bp_idx = 13
        for row in rows[1:]:
            if len(row) < 14:
                out_rows.append(row)
                continue
            typ = row[type_idx].strip() if type_idx < len(row) else ""
            state = row[state_idx].strip() if state_idx < len(row) else ""
            chem = row[chem_idx].strip()
            # If Organic and boiling point <= 25°C, set State = Gas
            if typ == "Organic":
                try:
                    bp = float(row[bp_idx].strip())
                    if bp <= 25:
                        row[state_idx] = "Gas"
                        print(f"Set {chem} to Gas (bp={bp})")
                except:
                    pass
            out_rows.append(row)
        with open(filepath, 'w', encoding='utf-8-sig', newline='') as f:
            writer = csv.writer(f)
            writer.writerows(out_rows)
        print(f"Fixed {fname}")

fix_gas_states()
