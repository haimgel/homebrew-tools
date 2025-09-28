# typed: false
# frozen_string_literal: true

class DisplaySwitch < Formula
  desc "An utility to watch for USB device connect/disconnect events and switch display inputs via DDC/CI."
  homepage "https://github.com/haimgel/display-switch"
  version "1.4.1"

  depends_on "libusb"

  on_macos do
    url "https://github.com/haimgel/display-switch/releases/download/1.4.1/display_switch-v1.4.1-macos-universal.zip"
    sha256 "d1ea418148aeadf2ec350787fd04c8a56a765610454e6db4abba143956edadb5"

    def install
      bin.install "display_switch"
    end
  end

  service do
    run [opt_bin/"display_switch"]
  end

  test do
    assert_match /display_switch v/, shell_output("#{bin}/display_switch -h", 0)
  end
end
