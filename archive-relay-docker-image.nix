{ bash, version, zeko_archive_relay, dockerTools }:

dockerTools.buildLayeredImage {
  name = "zeko-archive-relay";
  tag = "latest";
  contents = [ zeko_archive_relay bash ];
  config = {
    Entrypoint = [ "/bin/zeko-archive-relay" ];
  };
}
