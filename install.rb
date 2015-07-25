system("for FILENAME in *.proto; do [[ -f ${FILENAME} ]] && mv $FILENAME APS$FILENAME; done")
system("protoc --plugin=/usr/local/bin/protoc-gen-objc --proto_path=.:protobuf-objc/src/compiler/ *.proto --objc_out=\"./\"")
system("for FILENAME in *; do [[ -f ${FILENAME} ]] && mv $FILENAME \"`echo $FILENAME | sed s/.pb//`\"; done")
Dir.glob('./*.{h,m}') do |sourceFile|
	File.open("config.tmp", "w") do |io|
		io << File.read(sourceFile).gsub(/\.pb\.h\"/, '.h"')
	end
	FileUtils.mv("config.tmp", sourceFile)	
end
system("rm install.rb")