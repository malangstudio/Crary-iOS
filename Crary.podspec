#
# Be sure to run `pod lib lint Crary.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name = 'Crary'
  s.version = '0.1.3'
  s.summary = 'Croquis Library for iOS'
  s.homepage = 'https://github.com/croquiscom/Crary-iOS'
  s.license = 'MIT'
  s.author = { 'yamigo' => 'yamigo1021@gmail.com', 'sixmen' => 'sixmen@gmail.com' }
  s.source = { :git => "https://github.com/croquiscom/Crary-iOS.git", :tag => 'v0.1.3' }
  s.requires_arc = true

  s.platform = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.resource_bundle = { 'Crary' => ['Pod/Assets/*.lproj'] }

  s.public_header_files = 'Pod/Classes/Crary.h', 'Pod/Classes/CraryDefine.h'
  s.source_files = 'Pod/Classes/Crary.{h,m}', 'Pod/Classes/Crary+Private.h', 'Pod/Classes/CraryDefine.h'

  s.subspec 'Util' do |ss|
    ss.source_files = 'Pod/Classes/Util/*.{h,m}'
  end
  
  s.subspec 'RestClient' do |ss|
    ss.private_header_files = 'Pod/Classes/RestClient/CraryRestClient+Private.h'
    ss.source_files = 'Pod/Classes/RestClient/*.{h,m}'
    ss.dependency 'Crary/Util'
    ss.dependency 'AFNetworking', '~> 2.0'
    ss.dependency 'DCKeyValueObjectMapping'
    ss.ios.library = 'z'
  end
  
  s.subspec 'Dialog' do |ss|
    ss.source_files = 'Pod/Classes/Dialog/*.{h,m}'
  end
end
