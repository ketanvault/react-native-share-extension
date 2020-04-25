require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-share-extension"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/ketanvault/react-native-share-extension"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platform       = :ios, "9.0"
  s.source         = { :git => "https://github.com/ketanvault/react-native-share-extension.git", :tag => "master" } 
  s.source_files   = 'ios/ReactNativeShareExtension/*.{h,m}'

  s.dependency 'React'

end
