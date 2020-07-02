gen: swagger.json
	@ kuberl_gen


swagger.json: rev ?= master
swagger.json:
	@ curl -fsSLo $@ --retry 5 https://raw.githubusercontent.com/kubernetes-client/python/${rev}/scripts/swagger.json
