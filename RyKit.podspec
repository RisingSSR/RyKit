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
      ss.subspec 'Quartz' do |sss|
          sss.source_files = 'RyKit/Classes/Base/Quartz/**/*'
          sss.public_header_files = 'RyKit/Classes/Base/Quartz/**/*.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/UIKitEX/UIViewEX'
      end
      
      ss.subspec 'UIApplicationEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIApplication+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIApplication+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/FoundationEX/NSArrayEX'
          sss.dependency 'RyKit/FoundationEX/NSObjectEX'
          sss.dependency 'RyKit/UIKitEX/UIDeviceEX'
      end
      
      ss.subspec 'UIBarButtonItemEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIBarButtonItem+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIBarButtonItem+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'UIBezierPathEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIBezierPath+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIBezierPath+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/UIKitEX/UIFontEX'
      end
      
      ss.subspec 'UIColorEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIColor+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIColor+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/FoundationEX/NSStringEX'
      end
      
      ss.subspec 'UIControlEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIControl+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIControl+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'UIDeviceEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIDevice+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIDevice+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/FoundationEX/NSStringEX'
      end
      
      ss.subspec 'UIFontEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIFont+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIFont+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'UIGestureRecognizerEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIGestureRecognizer+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIGestureRecognizer+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'UIImageEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIImage+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIImage+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/FoundationEX/NSStringEX'
          sss.dependency 'RyKit/UIKitEX/Quartz'
          sss.dependency 'RyKit/UIKitEX/UIDeviceEX'
      end
      
      ss.subspec 'UIScreenEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIScreen+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIScreen+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
          sss.dependency 'RyKit/UIKitEX/UIDeviceEX'
      end
      
      ss.subspec 'UIScrollViewEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIScrollView+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIScrollView+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'UITableViewEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UITableView+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UITableView+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'UITextFieldEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UITextField+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UITextField+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
      
      ss.subspec 'UIViewEX' do |sss|
          sss.source_files = 'RyKit/Classes/Base/UIKit/UIView+YYAdd.{h, m}'
          sss.public_header_files = 'RyKit/Classes/Base/UIKit/UIView+YYAdd.h'
          sss.dependency 'RyKit/Macro/YYKitMacro'
      end
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
