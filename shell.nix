let
  nixpkgs = import <nixpkgs> {};
in
nixpkgs.mkShell {
  buildInputs = [ (nixpkgs.haskellPackages.ghcWithPackages (ps: [ps.dump-core ps.criterion]))
                  nixpkgs.simple-server ];
}
