#!/usr/bin/env bash

# protoc  -I"$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis" \
#      --swagger_out=. \
#      --go_out=. go
#     --proto_path="/Users/alphahlee/projects/Planon/planon" \
#         planon.proto

export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export PATH="/usr/local/opt/openssl/bin:$PATH"
#export GOPATH=/Users/alphahlee/go
#export PATH="/Users/alphahlee/go/bin":$PATH
export GOPATH=~/go
export PATH="~/go/bin":$PATH
#export PROTO_PATH="~/projects/Planon/planon"
export SHARED_PATH="$HOME/projects/Planon/planon/shared"
export PROTO_PATH="$HOME/projects/Planon/planon/shared"

for i in `ls $PROTO_PATH/*.proto`
do
echo Regenerating Swagger File for $i ....
protoc -I"$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis" -I"$SHARED_PATH" --swagger_out=logtostderr=true:. --proto_path=$PROTO_PATH $i
done
