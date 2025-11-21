cask "xnote" do
  version "1.0.1"
  sha256 "16e3c0624bf3df2201129a4fe7553ddedb5312bc857994cb575e5721bad7b68c"

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
