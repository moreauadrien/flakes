{
  description = "Go environment";

  let shellName= "Go";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in
  {
    devShells."x86_64-linux".default = pkgs.mkShell {
      packages = with pkgs; [
        go
        sqlc
        air
        go-blueprint
      ];

      shellHook = ''
        export NIX_SHELL_NAME="${shellName}"
        exec zsh
      '';
    };
  };
}
