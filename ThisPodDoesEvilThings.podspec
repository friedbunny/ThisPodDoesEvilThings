Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.name         = "ThisPodDoesEvilThings"
  s.version      = "1.0.1"
  s.summary      = "Uhh, clearly this pod does evil things."

  s.description  = <<-DESC
                   Demonstration of CocoaPods running arbitrary shell commands. 😑
                   DESC

  s.homepage     = "https://github.com/friedbunny/ThisPodDoesEvilThings"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  s.license = "MIT"

  s.author = "Jason Wray"
  s.social_media_url = "http://twitter.com/friedbunny"

  s.source = { :git => "https://github.com/friedbunny/ThisPodDoesEvilThings.git", :tag => "#{s.version}" }
  s.source_files = "*"

  if s.respond_to?(:swift_version)
    s.swift_version = "4.0"
  end

  # ―――  Evil Things  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  `HOMEBREW_NO_AUTO_UPDATE=1 brew install nyancat`
  `osascript -e 'tell app "Terminal" to do script "nyancat -n"'`

end
