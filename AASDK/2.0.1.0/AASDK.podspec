Pod::Spec.new do |s|
  s.name             = 'AASDK'
  s.version          = '2.0.1.0'
  s.summary          = 'AASDK 2.0.1.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
AccountSDK 2.0.1.0
                       DESC

  s.homepage         = 'https://guojunliu.github.io'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "steve" => "909476821@qq.com" }
  s.source           = { :git => 'https://github.com/Avid-ly/iOS-AASDK-CocoaPods.git', :tag => s.version }

  s.ios.deployment_target = '12.0'

  s.library = 'sqlite3', 'z', 'c++', 'xml2', 'resolv'

  s.frameworks = 'QuartzCore', 'MediaPlayer', 'CoreMedia', 'CoreGraphics', 'CFNetwork', 'WebKit', 'WatchConnectivity', 'SystemConfiguration', 'StoreKit', 'Social', 'MessageUI','JavaScriptCore','EventKit','CoreTelephony','AVFoundation','AdSupport'

  s.vendored_frameworks = 'Framework/AASDK/AASAccount.xcframework'
  
  s.resources = "Framework/AASDK/AASAccountSDK.bundle"

  s.resource_bundles = {
    'AASDK_Privacy' => ['Framework/AASDK/AASAccount.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy']
  }

  s.subspec 'FBSDKLoginKit' do |facebook|
  facebook.dependency 'FBSDKLoginKit', '>=17.0.0'
  end

  s.swift_version = '5.0'

  valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }

end
