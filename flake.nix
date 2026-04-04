{
  description = "kwarf.com";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};

      build = (
        pkgs.writeShellScriptBin "build" ''
          ${pkgs.hugo}/bin/hugo --gc --minify $@
        ''
      );

      serve = (
        pkgs.writeShellScriptBin "serve" ''
          ${pkgs.hugo}/bin/hugo serve $@
        ''
      );
    in
    {
      devShells.${system}.default = pkgs.mkShellNoCC {
        packages = [
          build
          serve
          pkgs.hugo
        ];

        shellHook = ''
          ${pkgs.hugo}/bin/hugo version
          echo "Run 'build' or 'serve'"
        '';
      };
    };
}
