Benchmarks for "Replacing type classes with records affects optimisation"

```
nix-shell
ghc -O2 Prop2.hs
./Prop2
```

```
benchmarking update/logic/tc
time                 3.471 ms   (3.462 ms .. 3.480 ms)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 2.916 ms   (2.824 ms .. 2.997 ms)
std dev              252.0 μs   (206.5 μs .. 309.2 μs)
variance introduced by outliers: 56% (severely inflated)

benchmarking update/logic/record
time                 15.06 ms   (15.06 ms .. 15.06 ms)
                     1.000 R²   (1.000 R² .. 1.000 R²)
mean                 13.54 ms   (12.96 ms .. 13.91 ms)
std dev              1.084 ms   (673.8 μs .. 1.562 ms)
variance introduced by outliers: 38% (moderately inflated)
```

