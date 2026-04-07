# Reaction Worklist

## Scope

Add real, non-duplicate reactions for the current zero-reaction gases in the APK chemistry tables.

Constraints from user:

- each new reaction must involve one zero-reaction gas
- the reaction partner should already exist in the app database
- if a reaction already exists in `rdb.csv` or `ordb.csv`, do not add it
- research should be web-backed and parallelized where possible

## Superseded First-Pass List

The original 36-gas list was a first-pass alias check and is not the final source of truth.
It overcounted some gases whose reactions already exist under formula IDs rather than display names.

Examples:

- `1-Butene` already has reactions under `C4H8`
- `Ammonia` already has reactions under `NH3`
- `Formaldehyde` already has reactions under `CH2O`
- `Nitric oxide` already has reactions under `NO`
- `Nitrogen dioxide` already has reactions under `NO2`
- `Nitrous oxide` already has reactions under `N2O`
- `Propylene` already has reactions under `C3H6`

## Corrected Working Zero-Reaction Set

The corrected working set is currently 29 gases:

1. `Boron tribromide`
2. `Boron trichloride`
3. `Boron trifluoride`
4. `Bromotrifluoromethane`
5. `Carbonyl sulfide`
6. `Chlorodifluoromethane`
7. `Dichlorodifluoromethane`
8. `Dimethyl ether`
9. `Dimethylamine`
10. `Dinitrogen tetroxide`
11. `Disilane`
12. `Ethylamine`
13. `Germane`
14. `Lead(IV) chloride`
15. `Methylamine`
16. `Nitrogen trifluoride`
17. `Phosgene`
18. `Plumbane`
19. `Selenium hexafluoride`
20. `Silane`
21. `Silicon tetrafluoride`
22. `Stannane`
23. `Sulfur hexafluoride`
24. `Tellurium hexafluoride`
25. `Thionyl tetrafluoride`
26. `Trichlorofluoromethane`
27. `Trichlorotrifluoroethane`
28. `Triethylamine`
29. `Trimethylamine`

## Confirmed Common Partner Pool In Inventory

These IDs were confirmed present in the current app data and are likely usable as reaction partners:

- `H2O`
- `H2SO4`
- `HCl`
- `HBr`
- `HF`
- `NaOH`
- `KOH`
- `O2`
- `Cl2`
- `Br2`
- `F2`
- `H2`
- `NH3`
- `CH3OH`
- `C2H5OH`
- `CO2`
- `CO`
- `NO`
- `NO2`
- `HNO3`

## Notes

- Some gas display names map to formula IDs in the database, for example:
  - `1-Butene` uses `C4H8`
  - `Propylene` uses `C3H6`
  - `Formaldehyde` uses `CH2O`
  - `Dimethyl ether` uses `CH3OCH3`
  - `Methylamine` uses `CH3NH2`
  - `Ethylamine` uses `C2H5NH2`
  - `Dimethylamine` uses `(CH3)2NH`
  - `Triethylamine` uses `(C2H5)3N`
  - `Trimethylamine` uses `(CH3)3N`
  - `Bromotrifluoromethane` uses `CBrF3`
  - `Chlorodifluoromethane` uses `CHClF2`
  - `Dichlorodifluoromethane` uses `CCl2F2`
  - `Trichlorofluoromethane` uses `CCl3F`
  - `Trichlorotrifluoroethane` uses `C2Cl3F3`

- Existing reactions must be checked against both:
  - `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV/rdb.csv`
  - `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV/ordb.csv`

- The chemistry curation itself is still pending.
