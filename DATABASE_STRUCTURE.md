# Database Structure

This APK stores chemistry data as CSV files under:

- `/home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV`

## High-Level Layout

- `gases_inorganic.csv`
  - Inorganic gas-focused subset with some liquid/solid entries.
  - 47 data rows.
- `gases_organic.csv`
  - Organic gas/liquid subset.
  - 23 data rows.
- `cdb.csv`
  - Main chemical database for the full app.
  - 623 data rows.
- `cdb-free.csv`
  - Reduced/free-version chemical database.
  - 195 data rows.
- `odb.csv`
  - Organic chemical database.
  - 235 data rows.
- `rdb.csv`
  - Main reaction database, mostly inorganic/general reactions.
  - 2185 reaction rows.
- `ordb.csv`
  - Organic reaction database.
  - 344 reaction rows.

## Chemical Tables

These files all describe chemicals. The shared schema is mostly:

- `Chemical`: internal ID or formula key
- `Type`: simulation/material type such as `Gas`, `Liquid`, `Solid`, `Organic`, `Solution`
- `State`: state code or display state used by the app
- `Available`: visibility/availability flag
- `RName`: readable English name
- `CName`: compact/common formula name
- `DName`: display name
- `Density1`, `Density2`, `Density3`: density-related values used by the simulation
- `Mm`: molar mass
- `Sol`: solubility
- `Mp`: melting point
- `Bp`: boiling point
- `KH`: Henry/related constant field used by the app
- `color1..color4`, `alpha1..alpha4`: render colors/transparency
- `friction`, `restitution`: physics parameters
- `JPN`, `CHN`, `TW`, `KR`: localized names
- `Solk`, `MOH`, `KOH`, `MH`, `KH`, `PTN`: app-specific chemistry/game flags

## Gas Subset Tables

### `gases_inorganic.csv`

Purpose:

- Quick editable subset for inorganic entries relevant to gases and nearby forms.

State distribution:

- `Gas`: 19
- `Liquid`: 4
- `Solid`: 1
- `0`: 22
- `SOLID`: 1

Availability distribution:

- `1`: 29
- `2`: 15
- `0`: 3

Notes:

- This file is not pure gas-only data.
- Some rows are inconsistent in capitalization and state encoding.

### `gases_organic.csv`

Purpose:

- Quick editable subset for organic gases and liquids.

State distribution:

- `Gas`: 13
- `Liquid`: 10

Availability distribution:

- `1`: 23

Notes:

- This file is cleaner than `gases_inorganic.csv`.
- It contains no solid rows in the current APK.

## Full Chemical Databases

### `cdb.csv`

Purpose:

- Main full chemical database used by the app.
- Contains inorganic materials, common compounds, solutions, metals, salts, gases, liquids, and solids.

Use it for:

- Looking up the canonical chemical token used by reactions.
- Finding display names and aliases.
- Editing physical properties or availability flags.

### `cdb-free.csv`

Purpose:

- Reduced/free-version variant of `cdb.csv`.

Differences:

- Fewer rows than `cdb.csv`.
- Same general structure, but currently one fewer trailing column.

### `odb.csv`

Purpose:

- Organic chemical database.

Important difference:

- The first column is effectively blank/legacy.
- Core identity fields start at column 2.

Observed header shape:

- empty leading column
- `Chemical`
- `Type`
- `Category`
- `Available`
- `RName`
- `CName`
- `DName`
- then the same physical/render/localization fields pattern as `cdb.csv`

Use it for:

- Organic formula/name lookup.
- Organic-specific aliases used by `ordb.csv`.

## Reaction Tables

These files describe how reactants become products.

Shared reaction fields:

- `Name`: unique reaction row ID
- `Speed`: reaction speed multiplier
- `Reactants`: `-`-separated reactant tokens
- `Products`: `-`-separated product tokens
- `Modulus`: stoichiometric counts aligned to reactants/products
- `Temps`: temperature trigger or range, sometimes `Ignite`
- `States`: state codes for reactants/products in app format
- `Effects`: visual/simulation effect name
- `Rek`: effect intensity or tuning value
- `Effect Color`: visual color

### `rdb.csv`

Purpose:

- Main reaction database.
- Covers general, inorganic, acid/base, precipitation, combustion, oxidation, and many app-core reactions.

Size:

- 2185 rows

Most common `Effects` values:

- `FALSE`: 1490
- `FIZZ`: 332
- `BURN3`: 115
- `FIRE3`: 75
- `BUBBLE2`: 62

### `ordb.csv`

Purpose:

- Organic reaction database.
- Covers combustion and organic transformations such as addition, reduction, substitution, and oxidation patterns.

Size:

- 344 rows

Extra field:

- `Cata`: catalyst or catalyst-like note

Most common `Effects` values:

- `FALSE`: 204
- `None`: 67
- `BURN3`: 64

## How The Databases Connect

Chemical lookup flow:

1. A chemical token in `Reactants` or `Products` should exist in `cdb.csv` or `odb.csv`.
2. Gas convenience files such as `gases_inorganic.csv` and `gases_organic.csv` are subsets, not the full source of truth.
3. Display names may differ from reaction tokens.
4. Some reactions use formulas instead of display names, for example `CH3NH2` instead of `Methylamine`.

Practical rule:

- Treat `cdb.csv` and `odb.csv` as canonical chemical registries.
- Treat `rdb.csv` and `ordb.csv` as canonical reaction registries.
- Treat `gases_inorganic.csv` and `gases_organic.csv` as filtered convenience lists for gas-related content.

## Clean Mental Model

- Inorganic/general chemicals: `cdb.csv`
- Organic chemicals: `odb.csv`
- Free-version chemicals: `cdb-free.csv`
- Inorganic/general reactions: `rdb.csv`
- Organic reactions: `ordb.csv`
- Inorganic gas-facing subset: `gases_inorganic.csv`
- Organic gas/liquid subset: `gases_organic.csv`

## Current Gas Reaction Status

Using the current APK contents:

- total gas-state entries across `gases_inorganic.csv` and `gases_organic.csv`: 32
- zero-reaction gases found after alias-aware matching into `rdb.csv` and `ordb.csv`: 0
