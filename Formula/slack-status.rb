# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SlackStatus < Formula
  desc "Set Slack status to predefined values from a command line."
  homepage "https://github.com/haimgel/slack-status-go"
  version "0.0.1"

  on_macos do
    url "https://github.com/haimgel/slack-status-go/releases/download/v0.0.1/slack-status-go_0.0.1_Darwin_all.tar.gz"
    sha256 "3937d80758efe62051356eb9c7477acefc26f2a54de73a12f3c5e077e5d80883"

    def install
      bin.install "slack-status"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/haimgel/slack-status-go/releases/download/v0.0.1/slack-status-go_0.0.1_Linux_arm64.tar.gz"
      sha256 "2bb09fd65250c168463e064203c13b357642fd1fa22da20071e84228978bf6fd"

      def install
        bin.install "slack-status"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/haimgel/slack-status-go/releases/download/v0.0.1/slack-status-go_0.0.1_Linux_x86_64.tar.gz"
      sha256 "45e2c373c0cc765ae05c88494ec61071a7b90e98a697a19bfad84c17728fdc9c"

      def install
        bin.install "slack-status"
      end
    end
  end

  test do
    assert_match /Set Slack status/, shell_output("#{bin}/slack-status -h", 0)
  end
end