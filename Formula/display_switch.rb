# typed: false
# frozen_string_literal: true

class DisplaySwitch < Formula
  desc "An utility to watch for USB device connect/disconnect events and switch display inputs via DDC/CI."
  homepage "https://github.com/haimgel/display-switch"
  version "1.0.0"

  on_macos do
    url "TODO"
    sha256 "TODO"

    def install
      bin.install "display_switch"
    end
  end

  test do
    assert_match /display_switch v/, shell_output("#{bin}/display_switch -h", 0)
  end
end
