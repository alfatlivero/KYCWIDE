#
#  Be sure to run `pod spec lint sdkDemo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "KYCWIDE"
  s.version      = "0.0.3"
  s.summary      = "A short description of sdkDemo."


   s.description      = <<-DESC
  TODO: Add long description of the pod here.
                         DESC

    s.homepage         = 'https://github.com/alfatlivero/KYCWIDE.git'
    s.license          = { :type => "MIT" }
    s.author           = { 'alfatlivero' => 'alfatlivero27@gmail.com' }

    s.source = { :http => 'https://github.com/wide-mobile/widekyc/raw/main/widekyc.framework.zip' }
        
    s.ios.deployment_target = '11.0'
    s.swift_version = '5.0'

    #s.preserve_paths  = 'widekyc.framework'
    #s.resources  = 'sdkDemo/**/*.{swift}'
    
    s.frameworks = 'CoreTelephony', 'Foundation', 'SystemConfiguration'
    s.static_framework = true
    s.requires_arc = true
   s.libraries = 'c++', 'z'
   s.platform          = :ios, '11.0'

 s.vendored_frameworks = 'widekyc.framework'
 s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
 s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

 s.dependency 'SwiftyJSON'
 s.dependency 'SVProgressHUD'

# Your XCFramework
end
