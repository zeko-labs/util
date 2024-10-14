{ bash, version, zeko_archive_relay, dockerTools, pkgs }:

dockerTools.buildLayeredImage {
  name = "zeko-archive-relay";
  tag = "latest";
  contents = [ zeko_archive_relay bash ];
  copyToRoot = [ pkgs.cacert ];
  config = {
    Entrypoint = [ "/bin/zeko-archive-relay" ];
  };
}
