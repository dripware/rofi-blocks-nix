{
  description = "a nix flake for rofi-blocks";
  outputs = { self, nixpkgs }: {
    system = "x86_64-linux";
    overlay = (self: super:{
      rofi-blocks = import ./build.nix nixpkgs;
    });
  };
}
