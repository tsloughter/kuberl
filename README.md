# Erlang Kubernetes client

Erlang client for Kubernetes 1.16 generated through Swagger.

## Watch Behaviour

The behaviour `kuberl_watch` starts a process to stream the results of a watch requests and calls the callback `handle_event` with the notification type (added, modified, deleted) and the resource object.


## Using the API

#### Configuration

The API server endpoint and key can be configured in environment configuration variables:

```erlang
[{kuberl, [{api_key, <<"... bearer token ...">>},
           {host, "https://x.x.x.x"}]}].
```

This will set a default configuration used if none is passed to API requests.

A new configuration can be created with functions in `kuberl`:

```erlang
Cfg = kuberl:cfg_with_bearer_token(kuberl:cfg_with_host("https://x.x.x.x"), <<"... bearer token ...">>),
kuberl_core_api:get_api_versions(ctx:background(), #{cfg => Cfg}).
```

Optionally the environment config can be overridden at runtime:

```erlang
kuberl:set_default_cfg(Cfg).
```

## Update Generated Code

### Without Nix

With [swagger-codegen] built under `../swagger-codegen` the script in the `bin` directory can be used to update the generated Erlang modules:

```shell
bin/update-generated-code.sh
```

This script will generate the code to a temporary directory under `/tmp` and then copy only the modules to `gen/`.

### With Nix

Install [Nix], [direnv], and [lorri].

```shell
# Run the lorri daemon
lorri daemon

# or watch this directory (once)
lorri watch # --once

# load the environment
direnv allow

# generate the code
kuberl_gen
```

`kuberl_gen` will generate the code to a temporary directory under `/tmp` and then copy only the modules to `gen/`.


<!-- References -->
[Nix]: https://nixos.org/
[direnv]: https://direnv.net/
[lorri]: https://github.com/target/lorri/
[swagger-codegen]: https://github.com/swagger-api/swagger-codegen/
