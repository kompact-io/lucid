{
  description = "lucid";

  inputs = {
    devshell.url = "github:numtide/devshell";
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url="github:nixos/nixpkgs";
  };

  outputs = { self, ...} @ inputs:
    inputs.flake-utils.lib.eachDefaultSystem (system: 
        let pkgs = import inputs.nixpkgs {
          inherit system;
          overlays = [ 
            inputs.devshell.overlay 
            ];
        };
        in
     {
      devShell =
        pkgs.devshell.mkShell {
          name="lucid";
          packages = with pkgs; [
            deno
            rnix-lsp
          ];
        commands = [
        ];
        };
    });
}
