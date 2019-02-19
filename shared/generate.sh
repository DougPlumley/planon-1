export FEATURE=shared
export PATH="/usr/local/opt/gettext/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/gettext/lib"
export CPPFLAGS="-I/usr/local/opt/gettext/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export GOPATH=~/go
export PATH="~/go/bin":$PATH
export SHARED_PATH="$HOME/projects/Planon/planon/shared"
export LABOR_PATH="$HOME/projects/Planon/planon/labor"
export PART_PATH="$HOME/projects/Planon/planon/part"
export PARTISSUE_PATH="$HOME/projects/Planon/planon/partissue"
export PARTREQ_PATH="$HOME/projects/Planon/planon/partrequest"
export PROJECT_PATH="$HOME/projects/Planon/planon/project"
export PO_PATH="$HOME/projects/Planon/planon/purchaseorder"
export PR_PATH="$HOME/projects/Planon/planon/purchaserequisition"
export WO_PATH="$HOME/projects/Planon/planon/workorder"
export PROTO_PATH="$HOME/projects/Planon/planon/$FEATURE"

for i in `ls $PROTO_PATH/*.proto`
do
echo Regenerating Swagger File for $i ....
cd $PROTO_PATH
protoc -I"$GOPATH/src/github.com/grpc-ecosystem/grpc-gateway/third_party/googleapis" -I"$SHARED_PATH"  -I"$LABOR_PATH" -I"$PART_PATH" -I"$PARTISSUE_PATH" -I"$PARTREQ_PATH" -I"$PROJECT_PATH" -I"$PO_PATH" -I"$PR_PATH" -I"$WO_PATH" --swagger_out=logtostderr=true:. --proto_path=$PROTO_PATH $i
done