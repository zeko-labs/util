{ bash, version, zeko_da, dockerTools }:

dockerTools.buildLayeredImage {
  name = "zeko-da";
  tag = "latest";
  contents = [ zeko_da bash ];
  config = {
    Entrypoint = [ "/bin/zeko-da" ];
    Cmd = [ "run-node" "--port" "1924" "--db-dir" "/db" ];
    Expose = 1924;
    Volumes = { "/db" = {}; };
    WorkingDir = "/db";
  };
}
