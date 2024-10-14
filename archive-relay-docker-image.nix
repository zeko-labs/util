{ bash, version, zeko_archive_relay, dockerTools, pkgs, coreutils }:

dockerTools.buildLayeredImage {
  name = "zeko-archive-relay";
  tag = "latest";
  contents = [ zeko_archive_relay bash pkgs.cacert coreutils ];
  config = {
    Entrypoint = [ "/bin/zeko-archive-relay" ];
    Env = [ "NIX_SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt" ];
  };
}
