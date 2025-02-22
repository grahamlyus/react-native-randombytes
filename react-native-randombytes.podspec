require 'json'
package_json = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|

  s.name           = "react-native-randombytes"
  s.version        = package_json["version"]
  s.summary        = package_json["description"]
  s.homepage       = "https://github.com/mvayngrib/react-native-randombytes"
  s.license        = package_json["license"]
  s.author         = { package_json["author"] => package_json["author"] }
  s.platforms      = { :ios => "7.0", :osx => "10.14" }
  s.source         = { :git => "#{package_json["repository"]["url"]}" }
  s.source_files   = '*.{h,m}'
  s.dependency 'React-Core'

end
