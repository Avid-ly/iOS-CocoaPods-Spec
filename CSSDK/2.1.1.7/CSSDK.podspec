Pod::Spec.new do |s|
  s.name             = 'CSSDK'
  s.version          = '2.1.1.7'
  s.summary          = 'CSSDK 2.1.1.7'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
CServiceSDK 2.1.1.7
                       DESC

  s.homepage         = 'https://guojunliu.github.io'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { "steve" => "909476821@qq.com" }
  s.source           = { :git => 'https://github.com/Avid-ly/iOS-CSSDK-CocoaPods.git', :tag => s.version }

  s.ios.deployment_target = '12.0'

  s.library = 'sqlite3', 'z', 'c++', 'xml2', 'resolv'

  s.frameworks = 'QuartzCore', 'MediaPlayer', 'CoreMedia', 'CoreGraphics', 'CFNetwork', 'WebKit', 'WatchConnectivity', 'SystemConfiguration', 'StoreKit', 'Social', 'MessageUI','JavaScriptCore','EventKit','CoreTelephony','AVFoundation','AdSupport'

  s.vendored_frameworks = 'Framework/CSSDK/CServiceSDK.xcframework'
  
  s.resources = "Framework/CSSDK/CServiceSDK.bundle"

  s.resource_bundles = {
    'CSSDK_Privacy' => ['Framework/CSSDK/CServiceSDK.xcframework/ios-arm64/**/PrivacyInfo.xcprivacy']
  }

  valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
  s.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }

end
