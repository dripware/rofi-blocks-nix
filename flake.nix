{
  description = "a nix flake for rofi-blocks";
  outputs = { self, nixpkgs }: {
    overlay = (self: super:{
      rofi-blocks = import ./build.nix nixpkgs;
    });
  };
}
