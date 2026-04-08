# Database Diagram

```text
                           CHLAB GASES APK DATA
                   /home/codespace/air-sdk-repo/Chlab_gases_fixed_decoded/assets/CSV

    +-----------------------+                      +----------------------+
    |  gases_inorganic.csv  |                      |  gases_organic.csv   |
    |  gas-focused subset   |                      |  organic gas/liquid  |
    |  47 rows              |                      |  23 rows             |
    +-----------+-----------+                      +-----------+----------+
                |                                              |
                | picks visible gas-related chemicals          | picks visible organic chemicals
                +--------------------------+-------------------+
                                           |
                                           v
                     +----------------------------------------+
                     |     Chemical identity / properties     |
                     |                                        |
                     |  cdb.csv       = main chemical DB      |
                     |  cdb-free.csv  = reduced/free DB       |
                     |  odb.csv       = organic chemical DB   |
                     +-------------------+--------------------+
                                         |
                                         | provides canonical tokens
                                         | formulas, names, aliases
                                         v
                     +----------------------------------------+
                     |          Reaction lookup layer         |
                     |                                        |
                     |  rdb.csv   = main reactions            |
                     |  ordb.csv  = organic reactions         |
                     +-------------------+--------------------+
                                         |
                                         | reactants -> products
                                         | effects, temps, states
                                         v
                     +----------------------------------------+
                     |         App simulation behavior        |
                     |   mixing, fire, fizz, smoke, etc.      |
                     +----------------------------------------+
```

## Simple Flow

```text
Gas list file
   -> chemical token/formula from cdb.csv or odb.csv
   -> reaction matched in rdb.csv or ordb.csv
   -> products/effects shown by the app
```

## Real Examples From This APK

```text
Example 1: Organic gas

gases_organic.csv
   1-Butene
      -> alias token in organic DB: C4H8
         -> ordb.csv reaction: C4H8-O2 -> CO2-H2O


Example 2: Inorganic gas

gases_inorganic.csv
   Silane
      -> canonical token: Silane
         -> rdb.csv reactions:
            Silane-O2   -> SiO2-H2O
            Silane-Cl2  -> SiCl4-HCl
            Silane-H2O  -> SiO2-H2


Example 3: Name/formula alias

gases_organic.csv
   Methylamine
      -> token in reactions: CH3NH2
         -> rdb.csv:
            CH3NH2-HCl   -> CH3NH3Cl
            CH3NH2-HBr   -> CH3NH3Br
            CH3NH2-H2SO4 -> (CH3NH3)2SO4
```

## Database Roles

```text
gases_inorganic.csv   = quick inorganic gas-facing list
gases_organic.csv     = quick organic gas/liquid list

cdb.csv               = main registry of chemicals
cdb-free.csv          = reduced/free registry
odb.csv               = organic registry

rdb.csv               = main reaction registry
ordb.csv              = organic reaction registry
```

## Practical Rule

```text
If you want to add or edit a chemical:
   edit cdb.csv or odb.csv

If you want to add or edit a gas subset entry:
   edit gases_inorganic.csv or gases_organic.csv

If you want to add or edit a reaction:
   edit rdb.csv or ordb.csv
```
