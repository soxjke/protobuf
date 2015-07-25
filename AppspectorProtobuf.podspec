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

  s.source_files = '*.proto'

  s.dependency 'ProtocolBuffers'
end
