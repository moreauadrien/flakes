{
  description = "Bun environment";


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    shellName= "Bun";
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in
  {
    devShells."x86_64-linux".default = pkgs.mkShell {
      packages = with pkgs; [
        bun
      ];

      shellHook = ''
        export NIX_SHELL_NAME="${NIX_SHELL_NAME:+$NIX_SHELL_NAME : }${shellName}"
        exec zsh
      '';
    };
  };
}
