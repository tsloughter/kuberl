{ pkgs ? import ./nix }:

let
  kuberl_gen = pkgs.writeScriptBin "kuberl_gen" ''
    #!${pkgs.runtimeShell}
    set -euo pipefail
    output_dir=$(mktemp -d)
    ${pkgs.swagger-codegen}/bin/swagger-codegen-cli "$@" \
        generate \
        -Dmodels \
        -DmodelDocs=false \
        -DpackageName=kuberl \
        -i swagger.json \
        -l erlang-client \
        -o "$output_dir"
    cp "$output_dir"/src/*.erl gen/
  '';
in
pkgs.mkShell {
  buildInputs = with pkgs; [
    erlang
    jre
    kuberl_gen
    mavenix.cli
    niv
    rebar3
    swagger-codegen
  ];
}
