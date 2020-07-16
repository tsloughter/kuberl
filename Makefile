ifdef IN_NIX_SHELL
gen: bootstrap swagger.json
	@ kuberl_gen
else
gen: swagger.json
	@ ./bin/update-generated-code.sh
endif


swagger.json: rev ?= master
swagger.json:
	@ curl -fsSLo $@ --retry 5 https://raw.githubusercontent.com/kubernetes-client/python/${rev}/scripts/swagger.json


.PHONY: bootstrap
ifdef IN_NIX_SHELL
bootstrap: shell.nix
	@ nix build --no-link -f $< || true
	@ lorri watch --once
	@ direnv allow
else
bootstrap: rev ?= v2.4.14
bootstrap:
	git -C .. clone -b ${rev} git@github.com:swagger-api/swagger-codegen.git
endif
