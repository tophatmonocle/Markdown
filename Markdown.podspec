Pod::Spec.new do |s|
  s.name         = "Markdown"
  s.version      = "0.1.0"
  s.summary      = "Full markdown support for Swift - wrapper over Discount (this actually is what GitHub uses deep down)"
  s.homepage     = "https://github.com/crossroadlabs/Markdown"
  s.license      = { :type => 'LGPL v3', :file => 'LICENSE' }
  s.author       = { "Crossroad Labs" => "daniel@crossroadlabs.xyz" }
  s.source       = { :git => "https://github.com/crossroadlabs/Markdown.git", :tag => "#{s.version}" }
  s.source_files = 'Markdown/**/*.swift'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.dependency 'CDiscount', '~> 2.2.0'
end
