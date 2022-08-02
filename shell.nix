{pkgs ? import <nixpkgs> {}}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    elixir
    postgresql
  ];
  shellHook = ''
    if [ ! "$(docker ps -q -f name=postgres_server)" ]; then
      docker compose up -d
    fi
  '';
}
