`nix build .#da-docker-image` to build Docker image for running Zeko DA node.

If you don't want to clone this repo, you can also just do
`nix build github:zeko-labs/util#da-docker-image`.

If you don't have Nix installed,
install Nix as:
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

(from https://github.com/DeterminateSystems/nix-installer)
