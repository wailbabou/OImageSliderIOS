Pod::Spec.new do |s|
          #1.
          s.name               = "OImageSliderIOS"
          #2.
          s.version            = "1.0.0"
          #3.  
          s.summary         = "Simple images slideshow for IOS apps"
          #4.
          s.homepage        = "http://wailbabou.tk"
          #5.
          s.license              = "MIT"
          #6.
          s.author               = "Ouail Bellal"
          #7.
          s.platform            = :ios, "12.0"
          #8.
          s.source              = { :git => "https://github.com/wailbabou/OImageSLiderIOS.git", :tag => "1.0.0" }
          #9.
          s.source_files     = "OImageSliderIOS", "OImageSliderIOS/**/*.{h,m,swift}"
    end