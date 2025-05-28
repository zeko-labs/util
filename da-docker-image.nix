{ bash, version, zeko_da, dockerTools }:

dockerTools.buildLayeredImage {
  name = "zeko-da";
  tag = "latest";
  contents = [ zeko_da bash ];
  config = {
    Entrypoint = [ "/bin/zeko-da" ];
    Env = [ "ZEKO_SIGNATURE_KIND=testnet" ];
    Cmd = [ "run-node" "--port" "1924" "--db-dir" "/db" "--network-id" "testnet" ];
    Expose = 1924;
    Volumes = { "/db" = {}; };
    WorkingDir = "/db";
  };
}
