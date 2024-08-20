{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
  inputs.zeko.url = "git+https://github.com/zeko-labs/zeko?ref=compatible&submodules=1";

  outputs = inputs:
    with inputs;
    {
      packages.x86_64-linux.da-docker-image =
        nixpkgs.legacyPackages.x86_64-linux.callPackage ./da-docker-image.nix {
          zeko_da = zeko.packages.x86_64-linux.devnet.zeko_da;
          version = zeko.rev;
        };
    };
}
