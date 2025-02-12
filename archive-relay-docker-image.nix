{ bash, version, zeko_archive_relay, dockerTools, pkgs }:

dockerTools.buildLayeredImage {
  name = "zeko-archive-relay";
  tag = "latest";
  contents = [ zeko_archive_relay bash pkgs.cacert ];
  config = {
    Entrypoint = [ "/bin/zeko-archive-relay", "--ledger-cache", "/ledger-cache" ];
    Env = [ "NIX_SSL_CERT_FILE=/etc/ssl/certs/ca-bundle.crt" ];
    Volumes = { "/ledger-cache" = {}; };
  };
}
