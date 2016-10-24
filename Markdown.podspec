Pod::Spec.new do |s|
  s.name         = "Markdown"
  s.version      = "1.0"
  s.summary      = "A UIViewController Category to display a ViewController as a popup with different transition effects."
  s.homepage     = "https://github.com/kastopia/MJPopupViewController"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = 'martinjuhasz'
  s.source       = { :git => "https://github.com/crossroadlabs/Markdown.git", :tag => "1.0.0-alpha.1" }
  s.platform     = :ios, '8.0'
  s.source_files = 'Markdown/*'
  s.frameworks = 'QuartzCore'
  s.requires_arc = true
  s.dependency 'CDiscount'
end
