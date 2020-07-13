gen: swagger.json
	@ kuberl_gen


swagger.json: rev ?= master
swagger.json:
	@ curl -fsSLo $@ --retry 5 https://raw.githubusercontent.com/kubernetes-client/python/${rev}/scripts/swagger.json


.PHONY: bootstrap
bootstrap: rev ?= v2.4.14
bootstrap:
	git -C .. clone -b ${rev} git@github.com:swagger-api/swagger-codegen.git
