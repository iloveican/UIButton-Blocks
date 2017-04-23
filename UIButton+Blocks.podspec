
Pod::Spec.new do |s|


  s.name         = "UIButton+Blocks"
  s.version      = "0.1.0"

  s.summary      = "a component of UIButton  on iOS"

  s.description  = " UIButton was created in a time before blocks, ARC, and judging by its naming
   Lets modernize this shizzle with some blocks goodness."

  s.license      = "MIT"
  s.author             = { "jiang.zijia" => "j1140752635@gmail.com" }

  s.homepage     = "https://github.com/JZJJZJ/UIButton-Blocks"

  s.requires_arc = false


  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/JZJJZJ/UIButton-Blocks.git", :tag => s.version }


  s.source_files  = "UIButton+Blocks/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"

  end
