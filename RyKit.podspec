#
# Be sure to run `pod lib lint RyKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RyKit'
  s.version          = '0.1.1'
  s.summary          = 'RyKit (魔改YYKit)'

  s.homepage         = 'https://github.com/RisingSSR/RyKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'RisingSSR' => '2769119954@qq.com' }
  s.source           = { :git => 'https://github.com/RisingSSR/RyKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  
  # ---------------- subspec ----------------
  
  s.subspec 'Macro' do |ss|
      ss.subspec 'YYKitMacro' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Macro/YYKitMacro.h'
          sss.public_header_files = 'yKit/Classes/Base/Macro/YYKitMacro.h'
      end
      
      ss.subspec 'RisingSingleClass' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Macro/RisingSingleClass.h'
          sss.public_header_files = 'yKit/Classes/Base/Macro/RisingSingleClass.h'
      end
  end
  
  s.subspec 'Model' do |ss|
      ss.source_files = 'RyKit/Classes/Model/**/*'
      ss.public_header_files = 'RyKit/Classes/Model/**/*.h'
  end
  
  s.subspec 'FoundationEX' do |ss|
      ss.source_files = 'RyKit/Classes/Base/Foundation/**/*'
      ss.public_header_files = 'RyKit/Classes/Base/Foundation/**/*.h'
      ss.dependency 'RyKit/Macro'
  end
  
  s.subspec 'UIKitEX' do |ss|
      ss.source_files = 'RyKit/Classes/Base/UIKit/**/*', 'RyKit/Classes/Base/Quartz/**/*'
      ss.public_header_files = 'RyKit/Classes/Base/UIKit/**/*.h', 'RyKit/Classes/Base/Quartz/**/*.h'
      ss.dependency 'RyKit/FoundationEX'
  end
  
  s.subspec 'Cache' do |ss|
      ss.source_files = 'RyKit/Classes/Cache/**/*'
      ss.public_header_files = 'RyKit/Classes/Cache/**/*.h'
      ss.dependency 'RyKit/FoundationEX'
  end
  
  s.subspec 'Utility' do |ss|
      ss.source_files = 'RyKit/Classes/Utility/**/*'
      ss.public_header_files = 'RyKit/Classes/Utility/**/*.h'
      ss.dependency 'RyKit/Macro'
  end

  s.source_files = 'RyKit/Classes/YYKit.h'
  s.public_header_files = 'RyKit/Classes/YYKit.h'
end
