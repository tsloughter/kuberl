#!/bin/sh

set -e

output_dir=`mktemp -d`

# for now it assumes swagger is in the same parent directory
executable="../swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar"

# if you've executed sbt assembly previously it will use that instead.
export JAVA_OPTS="${JAVA_OPTS} -XX:MaxPermSize=256M -Xmx1024M -DloggerPath=conf/log4j.properties"
ags="$@ generate -t ../swagger-codegen/modules/swagger-codegen/src/main/resources/erlang-client -DpackageName=kuberl \
        -i swagger.json -l erlang-client -o ${output_dir}"

java $JAVA_OPTS -jar $executable $ags

cp $output_dir/src/*.erl gen/
