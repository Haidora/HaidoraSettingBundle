Pod::Spec.new do |s|
  s.name             = "HaidoraSettingBundle"
  s.version          = "0.1"
  s.summary          = "用于配置HOST和PORT."
  s.description      = <<-DESC
                       DESC
  s.homepage         = "https://github.com/Haidora/HaidoraSettingBundle"
  s.license          = 'MIT'
  s.author           = { "mrdaios" => "mrdaios@gmail.com" }
  s.source           = { :git => "https://github.com/Haidora/HaidoraSettingBundle.git", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resources    = ['Pod/Assets/*.bundle']
#s.resource_bundles = {
#    'HaidoraSettingBundle' => ['Pod/Assets/*.png']
#  }
  # s.frameworks = 'UIKit', 'Foundation'
end
