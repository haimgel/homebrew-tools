# typed: false
# frozen_string_literal: true

class DisplaySwitch < Formula
  desc "An utility to watch for USB device connect/disconnect events and switch display inputs via DDC/CI."
  homepage "https://github.com/haimgel/display-switch"
  version "1.4.0"

  depends_on "libusb"

  on_macos do
    url "https://github.com/haimgel/display-switch/releases/download/1.4.0/display_switch-v1.4.0-macos-universal.zip"
    sha256 "61911a8a70b38c710403a5c7064050f792441126ad3d0478dbf96a8308724275"

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
