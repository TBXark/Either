Pod::Spec.new do |s|
  s.name             = 'EitherX'
  s.version          = '0.1.0'
  s.summary          = 'An implementation of Either type in Swift'
  s.description      = 'An implementation of Either type in Swift Language'
  s.homepage         = 'https://github.com/TBXark/Either'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tbxark' => 'tbxark@outlook.com' }
  s.source           = { :git => 'https://github.com/tbxark/Either.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'Either/Classes/**/*'
end
