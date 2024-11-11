# typed: false
# frozen_string_literal: true

class DisplaySwitch < Formula
  desc "An utility to watch for USB device connect/disconnect events and switch display inputs via DDC/CI."
  homepage "https://github.com/haimgel/display-switch"
  version "1.4.0-prerelease"

  on_macos do
    url "https://github.com/haimgel/display-switch/releases/download/1.4.0-prerelease/display_switch-v1.4.0-macos-universal.zip"
    sha256 "dd68195f50edeabfacaf19921c7d961329493061993836186f40a25e1f95dd1c"

    def install
      bin.install "display_switch"
    end
  end

  test do
    assert_match /display_switch v/, shell_output("#{bin}/display_switch -h", 0)
  end
end
