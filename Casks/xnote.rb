cask "xnote" do
  version "1.0.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/unclecode/xnote/releases/download/v#{version}/xnote-#{version}-mac-universal.zip"
  name "xnote"
  desc "Minimalist note-taking app for macOS"
  homepage "https://github.com/unclecode/xnote"

  app "xnote.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/xnote.app"],
                   sudo: false
  end

  zap trash: [
    "~/.xnote",
  ]
end
