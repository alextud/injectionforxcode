Pod::Spec.new do |s|
  s.name         = 'injection4xcode'
  s.version      = '0.0.1'
  s.summary      = 'Runtime Code Injection for Objective-C.'
  s.author       = { 'John Holdsworth' => '@Injection4Xcode' }
  s.homepage     = 'http://www.injectionforxcode.com'
  s.platform     = :ios, '6.0'
  s.source       = { :git => 'https://github.com/alextud/injectionforxcode.git' }
  s.source_files = 'InjectionPluginLite/Classes/BundleInterface.h'
  s.frameworks   = 'Foundation'
  s.requires_arc = true
end
