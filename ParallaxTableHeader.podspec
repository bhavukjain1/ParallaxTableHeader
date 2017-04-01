
Pod::Spec.new do |s|

  s.name         = "ParallaxTableHeader"
  s.version      = "1.0.0"
  s.summary      = "Zoom image when scrolling tableview downwards. Simple to integrate parallax effect."

 s.description  = "Zoom image when scrolling tableview downwards. Simple to integrate parallax effect."

  s.homepage     = "http://bhavukjain.com"




  s.license      = 'MIT'





  s.author             = 'Bhavuk Jain'

  s.social_media_url   = 'http://twitter.com/bhavukjain1'



  s.platform     = :ios, "9.0"





  s.source       = { :git => "https://github.com/bhavukjain1/ParallaxTableHeader.git", :tag => "#{s.version}" }




  s.source_files  = "ParallaxTableHeader", "ParallaxTableHeader/**/*.{h,m,swift}"


  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3' }


end
