Pod::Spec.new do |spec|
  spec.name = "Reveal-SDK"
  spec.version = "43"
  spec.summary = "The Reveal SDK: Runtime view debugging for iOS & tvOS apps & extensions."
  spec.description = "Reveal brings powerful runtime view debugging to iOS developers.\nPlease visit our website for more details: http://revealapp.com/"
  spec.homepage = "https://revealapp.com/"
  spec.license = { :type => "Commercial" }
  spec.authors = {
    "Itty Bitty Apps Pty Ltd" => "reveal-support@ittybittyapps.com"
  }
  spec.source = {
    :http => "https://download.revealapp.com/RevealServer-43.zip"
  }
  spec.social_media_url = "https://twitter.com/reveal_app"
  spec.screenshots = [
    "https://images.revealapp.com/CocoaPods/banner.jpg"
  ]

  spec.platforms = {
    :ios => "11.4",
    :tvos => "11.4"
  }

  spec.requires_arc = false
  spec.compiler_flags = "-ObjC"
  spec.frameworks = [ "CoreGraphics", "CFNetwork", "QuartzCore" ]
  spec.libraries = "z"

  spec.vendored_frameworks = "RevealServer/RevealServer.xcframework"

  spec.xcconfig = {
    "LD_RUNPATH_SEARCH_PATHS" => "$(inherited) @executable_path/Frameworks @loader_path/Frameworks"
  }
end
