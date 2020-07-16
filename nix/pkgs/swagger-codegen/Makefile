mavenix.lock: /tmp/default.nix
	mvnix-update $<
	cp /tmp/mavenix.lock .

/tmp/default.nix:
	mvnix-init -S '(import ${CURDIR}/../../sources.nix).swagger-codegen' -f -o $(@D)
