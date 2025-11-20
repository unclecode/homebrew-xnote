cask "xnote" do
  version "1.0.0"
  sha256 "68067f01dee58152e3abf70c34f1aeeb7fa38ac8f64fea4cb313a9ee05aa0206"

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
