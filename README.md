# Erlang Kubernetes client

Erlang client for Kubernetes generated through swagger.

## Watch Behaviour

The behaviour `kuberl_watch` starts a process to stream the results of a watch requests and calls the callback `handle_event` with the notification type (added, modified, deleted) and the resource object.


## Using the API 

#### Configuration

The api server endpoint and key can be configured in environment configuration variables:

```erlang
[{kuberl, [{api_key, <<"... bearer token ...">>},
           {host, "https://x.x.x.x"}]}].
```

This will set a default configuration used if none is passed to api requests.

A new configuration can be created with functions in `kuberl`:

```erlang
Cfg = kuberl:cfg_with_bearer_token(kuberl:cfg_with_host("https://x.x.x.x"), <<"... bearer token ...">>),
kuberl_core_api:get_api_versions(ctx:background(), Cfg).
```

Optionally the environment config can be override at runtime:

```erlang
kuberl:set_default_cfg(Cfg).
```

## Update Generated Code

With [swagger-codegen](https://github.com/swagger-api/swagger-codegen) built under `../swagger-codegen` the script in the `bin` directory can be used to update the generated Erlang modules:

```shell
bin/update-generated-code.sh
```

This script will generate the code to a temporary directory under `/tmp` and then copy only the modules to `gen/`.

