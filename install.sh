for FILENAME in *.proto; do [[ -f ${FILENAME} ]] && mv $FILENAME APS$FILENAME; done
protoc --plugin=/usr/local/bin/protoc-gen-objc --proto_path=.:protobuf-objc/src/compiler/ *.proto --objc_out="./"
for FILENAME in *; do [[ -f ${FILENAME} ]] && mv $FILENAME "`echo $FILENAME | sed s/.pb//`"; done