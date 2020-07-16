self: super: rec {
  inherit (import (import ./sources.nix).niv { pkgs = super; }) niv;
  mavenix = (import (import ./sources.nix).mavenix { pkgs = super; });
  swagger-codegen = import ./pkgs/swagger-codegen {
    inherit mavenix;
    inherit (super) jre_headless makeWrapper;
    src = (import ./sources.nix).swagger-codegen;
  };
}
