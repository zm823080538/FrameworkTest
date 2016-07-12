Pod::Spec.new do |s|
　　s.name = 'MyFramework'
　　s.version = '0.0.1'
　　s.license = 'MIT'
　　s.summary = '我的第一个测试podspec文件'
　　s.homepage = 'https://zm823080538@github.com/zm823080538/FrameworkTest'
　　s.author = { 'zhaoming' => '823080538@qq.com' }
　　s.source = { :git => 'https://zm823080538@github.com/zm823080538/FrameworkTest.git'}
　　s.platform = :ios
　　s.source_files = 'TableViewDemo/Classes/*.{h,m}'
　　s.resources = "MyFramework/Resources/*.{png,xib,storyboard}"
end