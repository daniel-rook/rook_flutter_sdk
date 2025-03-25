#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint rook_sdk_apple_health.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'rook_sdk_apple_health'
  s.version          = '0.0.1'
  s.summary          = 'Extract and upload data from Apple Health'
  s.description      = <<-DESC
A new Flutter plugin project.
                       DESC
  s.homepage         = 'https://www.tryrook.io/'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ROOK' => 'contact@tryrook.io' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'RookSDK', '1.7.0'
  s.dependency 'SwiftProtobuf', '1.28.2'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
