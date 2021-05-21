{ pkgs ? (import <nixpkgs> { }) }:
pkgs.mkShell {
  buildInputs = [ pkgs.podman pkgs.podman-compose pkgs.postgresql_13 pkgs.redis ];
}
