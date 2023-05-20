{ sources ? import ./nix/sources.nix }: # import the sources

let
  pkgs = import sources.nixpkgs                  # and use them again!
    { overlays = [ ]; config = { }; };

  # mermaid-filter = pkgs.mkYarnPackage {
  #   name = "mermaid-filter";
  #   src = ./.;
  #   packageJSON = ./package.json;
  #   yarnLock = ./yarn.lock;
  #   # NOTE: this is optional and generated dynamically if omitted
  #   # yarnNix = ./yarn.nix;
  # };

  mermaid-filter = pkgs.mkYarnPackage rec {
    name = "mermaid-filter";
    src = pkgs.fetchFromGitHub {
      owner = "raghur";
      repo = "mermaid-filter";
      rev = "97075a3988b25c24593c17e5282280627d0eaf4d";
      sha256 = "sha256-HVcDpIBNNguyaoslnnc9u7mAtIDDCoRKxQKuzoHkYwI=";
    };
    buildPhase = ''
      export HOME=$(mktemp -d)
      yarn --offline build
    '';
    # packageJSON = "${src}/package.json";
    # yarnLock = "${src}/yarn.lock";
  };

in
pkgs.stdenv.mkDerivation {
  name = "discrete-maths-collections";
  version = "1.0.0";
  src = ./.;
  buildInputs = [
    pkgs.pandoc
    pkgs.gnumake
    pkgs.lua
    mermaid-filter
  ];

  buildPhase = ''
    make sheet_1.html
  '';

  installPhase = ''
    cp output/*.html $out/
  '';
}
