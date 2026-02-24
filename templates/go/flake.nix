{
  description = "Go environment";


  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }:
  let
    shellName= "Go";
    pkgs = nixpkgs.legacyPackages."x86_64-linux";
  in
  {
    devShells."x86_64-linux".default = pkgs.mkShell {
      packages = with pkgs; [
        go
        sqlc
        air
        gopls
        delve
        go-blueprint
      ];

      shellHook = ''
        export NIX_SHELL_NAME="${shellName}"
        exec $SHELL
      '';
    };
  };
}
