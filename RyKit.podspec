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
      ss.subspec 'NSArrayEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSArray+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSArray+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/FoundationEX/NSDataEX'
      end
      
      ss.subspec 'NSBundleEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSBundle+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSBundle+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/FoundationEX/NSStringEX'
      end
      
      ss.subspec 'NSDataEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSData+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSData+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'NSDateEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSDate+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSDate+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'NSDictionaryEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSDictionary+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSDictionary+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/FoundationEX/NSStringEX'
          sss.dependency 'RyKit/FoundationEX/NSDataEX'
      end
      
      ss.subspec 'NSKeyedUnarchiverEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSKeyedUnarchiver+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSKeyedUnarchiver+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'NSNumberEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSNumber+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSNumber+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'NSObjectEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSObject+*.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSObject+?.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'NSStringEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSString+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSString+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'NSThreadEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSThread+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSThread+YYAdd.h'
      end
      
      ss.subspec 'NSTimerEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Foundation/NSTimer+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/Foundation/NSTimer+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
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
