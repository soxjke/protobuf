#
# Be sure to run `pod lib lint AppspectorProtobuf.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "AppspectorProtobuf"
  s.version          = "0.1.0"
  s.summary          = "A short description of AppspectorProtobuf."
  s.description      = <<-DESC
                       An optional longer description of AppspectorProtobuf

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/soxjke/protobuf"
  s.license          = 'MIT'
  s.author           = { "Petro Korienev" => "soxjke@gmail.com" }
  s.source           = { :git => "https://github.com/soxjke/protobuf.git", :branch => "master"}

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = '*.{h,m,proto}'
  
  s.prepare_command = <<-CMD
  						for FILENAME in *.proto; do [[ -f ${FILENAME} ]] && mv $FILENAME APS$FILENAME; done
                        protoc --plugin=/usr/local/bin/protoc-gen-objc --proto_path=.:protobuf-objc/src/compiler/ *.proto --objc_out="./"
  						for FILENAME in *; do [[ -f ${FILENAME} ]] && mv $FILENAME "`echo $FILENAME | sed s/.pb//`"; done
                   CMD

  s.dependency 'ProtocolBuffers'
end
