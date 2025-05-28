{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
  inputs.zeko.url = "git+https://github.com/zeko-labs/zeko?ref=refs/tags/v0.2.0-alpha&submodules=1";

  outputs = inputs:
    with inputs;
    {
      packages.x86_64-linux = rec {
        da-docker-image =
          nixpkgs.legacyPackages.x86_64-linux.callPackage ./da-docker-image.nix {
            zeko_da = zeko.packages.x86_64-linux.devnet.zeko_da;
            version = zeko.rev;
          };

        archive-relay-docker-image = 
          nixpkgs.legacyPackages.x86_64-linux.callPackage ./archive-relay-docker-image.nix {
            zeko_archive_relay = zeko.packages.x86_64-linux.devnet.zeko_archive_relay;
            version = zeko.rev;
          };

        default = da-docker-image;
      };
    };
}
