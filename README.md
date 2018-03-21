Benchmarks for "Replacing type classes with records affects optimisation"

```
nix-shell
ghc -O2 Prop2.hs
./Prop2
```

```
 benchmarking tc/Implementation 1
 time                 3.510 ms   (3.509 ms .. 3.512 ms)
                      1.000 R²   (1.000 R² .. 1.000 R²)
 mean                 2.976 ms   (2.886 ms .. 3.060 ms)
 std dev              241.1 μs   (195.4 μs .. 293.1 μs)
 variance introduced by outliers: 51% (severely inflated)

 benchmarking tc/Implementation 2
 time                 25.05 ms   (21.16 ms .. 30.43 ms)
                      0.912 R²   (0.849 R² .. 0.984 R²)
 mean                 19.18 ms   (16.20 ms .. 21.45 ms)
 std dev              5.627 ms   (4.710 ms .. 6.618 ms)
 variance introduced by outliers: 89% (severely inflated)

 benchmarking tc/Implementation 3
 time                 20.06 ms   (15.33 ms .. 23.57 ms)
                      0.856 R²   (0.755 R² .. 0.934 R²)
 mean                 18.43 ms   (16.92 ms .. 19.85 ms)
 std dev              3.490 ms   (3.003 ms .. 4.076 ms)
 variance introduced by outliers: 74% (severely inflated)

 benchmarking tc/Implementation 4
 time                 3.498 ms   (3.484 ms .. 3.513 ms)
                      1.000 R²   (1.000 R² .. 1.000 R²)
 mean                 3.016 ms   (2.935 ms .. 3.083 ms)
 std dev              205.7 μs   (162.6 μs .. 261.8 μs)
 variance introduced by outliers: 42% (moderately inflated)
```

