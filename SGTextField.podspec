Pod::Spec.new do |s|
  s.name             = "SGTextField"
  s.version          = "1.0"
  s.summary          = "Create text insets."
  s.description      = "By default UITextField not supports text insets around text.SGTextField is subclassing UITextField and overrides textRectForBounds to extend functionality."
  s.homepage         = "https://github.com/sger/SGTextField"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Spiros Gerokostas" => "spiros.gerokostas@gmail.com" }
  s.source           = { :git => "https://github.com/sger/SGTextField.git", :tag => s.version.to_s }
  s.platform         = :ios, '8.0'
  s.requires_arc     = true
  s.source_files     = 'Pod/Classes/**/*'
  s.frameworks       = 'UIKit'

end
