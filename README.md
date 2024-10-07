`nix build .#da-docker-image` to build Docker image for running Zeko DA node.

If you don't want to clone this repo, you can also just do
`nix build github:zeko-labs/util#da-docker-image`.

`archive-relay-docker-image` also exists and is for the archive relay.

If you don't have Nix installed,
install Nix as:
```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

(from https://github.com/DeterminateSystems/nix-installer)

### Pushing to Docker

```bash
nix build .#da-docker-image
docker load -i ./result
docker tag localhost/zeko-da:latest zekolabs/zeko-da:latest
docker push zekolabs/zeko-da:latest
```

Do the same for the archive relay.
