Pod::Spec.new do |s|

  s.name         = "PWObjFolderManger"
  s.version      = "1.0.0"
  s.summary      = "This is a test spec proj."
  s.description  = <<-DESC
                   DESC
  s.homepage     = "https://github.com/pengwll/PWObjFolderManger"
  s.license      = "MIT (example)"
  s.author             = { "pengwll" => "email@address.com" }
  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"
  s.source       = { :git => "https://github.com/pengwll/PWObjFolderManger.git", :tag => "1.0.0" }
  s.source_files  = "PWObjFolderManger", "PWObjFolderManger/**/*.{h,m}"
  s.exclude_files = "PWObjFolderManger/Exclude"
  s.public_header_files = "PWObjFolderManger/**/*.h"
  s.frameworks = "UIKit", "AnotherFramework"
  s.requires_arc = true
  s.dependency "FCFileManager"

end
