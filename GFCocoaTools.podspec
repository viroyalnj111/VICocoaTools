#
# Be sure to run `pod lib lint GFCocoaTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GFCocoaTools'
  s.version          = '0.2.0'
  s.summary          = '自己使用的一个工具类.'
  s.module_name      = 'GFCocoaTools'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
平时使用的一些工具类，为了方便，使用pod 打包起来，方便跨项目使用
                       DESC

  s.homepage         = 'https://github.com/guofengld/GFCocoaTools'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'guofengld' => 'guofengld@gmail.com' }
  s.source           = { :git => 'https://github.com/guofengld/GFCocoaTools.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/guofengjd'

  s.ios.deployment_target = '8.1'
  s.requires_arc = true

  s.source_files = 'GFCocoaTools/GFCocoaTools.h'

  s.dependency 'MBProgressHUD'
  s.dependency 'SDWebImage'
  s.dependency 'AFNetworking'
  s.dependency 'Masonry'

  s.resource_bundles = {
    'GFCocoaTools' => ['GFCocoaTools/Assets/*.png', 'GFCocoaTools/Assets/*.lproj']
  }

  s.subspec 'Classes' do |ss|
    ss.source_files = 'GFCocoaTools/Classes/*.{h,m}'
  end

# s.subspec 'SSZipArchive' do |ss|
#   ss.source_files = ['GFCocoaTools/SSZipArchive/*.{h,c,m}','GFCocoaTools/SSZipArchive/aes/*.{h,c,m}','GFCocoaTools/SSZipArchive/minizip/*.{h,c,m}']
# end

end
