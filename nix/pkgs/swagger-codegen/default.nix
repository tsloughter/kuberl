{ jre_headless,
  makeWrapper,
  mavenix,
  src,
  doCheck ? false,
  doJavadoc ? false
}:
mavenix.buildMaven {
  inherit src doCheck doJavadoc;
  infoFile = ./mavenix.lock;
  buildInputs = [ makeWrapper ];
  patchPhase = ''
    sed -i '/modules\/swagger-generator/d' pom.xml
  '';
  postInstall = ''
   makeWrapper ${jre_headless}/bin/java $out/bin/swagger-codegen-cli \
       --add-flags "-jar $out/share/java/swagger-codegen-cli.jar"
  '';
}
