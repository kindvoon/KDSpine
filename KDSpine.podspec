#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint spine_flutter.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'KDSpine'
  s.version          = '1.2.2'
  s.summary          = 'Spine runtimes for iOS.'
  s.description      = <<-DESC
Spine runtimes for iOS.
                       DESC
  s.homepage         = 'https://github.com/kindvoon/KDSpine.git'
  s.author           = { "Esoteric Software LLC  " => "https://github.com/kindvoon/KDSpine.git" }

  s.license          = { :file => 'LICENSE' }

  s.source           = { :git => 'https://github.com/kindvoon/KDSpine.git', :tag => s.version.to_s }
  #s.source_files     = 'Spine/spine-ios/Sources/Spine/**/*.{swift,metal}'
  s.platform         = :ios, '13.0'

  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"../SpineCppLite/spine-cpp/spine-cpp/include" "../SpineCppLite/spine-cpp/spine-cpp-lite"'
  }
  
    
#  s.frameworks          =  'Spine', 'SpineCppLiteFramework', 'SpineShadersStructs'
  #s.ios.vendored_frameworks = ['../Spine/Spine.framework', '../SpineCppLite/SpineCppLiteFramework.framework', '../SpineShadersStructs/SpineShadersStructs.framework']

#  s.frameworks          =  'Spine.xcframework'
  s.ios.vendored_frameworks = 'Spine.xcframework'

  s.swift_version = '5.0'
#  s.static_framework = false
  s.dependency 'KDSpineCppLite'
  s.dependency 'KDSpineShadersStructs'
end
