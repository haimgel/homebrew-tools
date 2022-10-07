# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SlackStatus < Formula
  desc "Set Slack status to predefined values from a command line."
  homepage "https://github.com/haimgel/slack-status-go"
  version "0.1.0"

  on_macos do
    url "https://github.com/haimgel/slack-status-go/releases/download/v0.1.0/slack-status_0.1.0_Darwin_all.tar.gz"
    sha256 "929fe37cea7b987ed64d80cf36b07c97bf8afc439b08e83e237deccf8933176c"

    def install
      bin.install "slack-status"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/haimgel/slack-status-go/releases/download/v0.1.0/slack-status_0.1.0_Linux_arm64.tar.gz"
      sha256 "e3fd8ad61f7d3ccd244a4f939a2242ae91e13487959e5b4c0f2a2304deac69aa"

      def install
        bin.install "slack-status"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/haimgel/slack-status-go/releases/download/v0.1.0/slack-status_0.1.0_Linux_x86_64.tar.gz"
      sha256 "eda23bb5b15e17d8f91ae83f97562c519bcdbe963378d16cc4cf78845be70962"

      def install
        bin.install "slack-status"
      end
    end
  end

  test do
    assert_match /Set Slack status/, shell_output("#{bin}/slack-status -h", 0)
  end
end
