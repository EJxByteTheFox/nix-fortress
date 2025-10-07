{
  description = "Various security options for NixOS";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs = { nixpkgs }: {
    nixosModules.nix-fortress = import ./fortress/default.nix;
  };
}