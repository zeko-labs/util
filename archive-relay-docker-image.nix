{ bash, version, zeko, dockerTools }:

dockerTools.buildLayeredImage {
  name = "zeko-archive-relay";
  tag = "latest";
  contents = [ zeko bash ];
  config = {
    Entrypoint = [ "/bin/zeko-archive-relay" ];
  };
}
