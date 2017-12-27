# Erlang Kubernetes client

Erlang client for Kubernetes generated through swagger.

## Watch Behaviour

The behaviour `kuberl_watch` starts a process to stream the results of a watch requests and calls the callback `handle_event` with the notification type (added, modified, deleted) and the resource object.

## Update Generated Code

With [swagger-codegen](https://github.com/swagger-api/swagger-codegen) built under `../swagger-codegen` the script in the `bin` directory can be used to update the generated Erlang modules:

```shell
bin/update-generated-code.sh
```

This script will generate the code to a temporary directory under `/tmp` and then copy only the modules to `gen/`.

