# This file is managed by goreleaser.
# Do not edit manually — it is updated automatically on each release.
# See: https://github.com/gethook/gethook-cli
class Gethook < Formula
  desc "Receive, debug, and replay webhooks locally — in seconds"
  homepage "https://gethook.dev"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/gethook/gethook-cli/releases/download/v0.0.0/gethook_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/gethook/gethook-cli/releases/download/v0.0.0/gethook_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/gethook/gethook-cli/releases/download/v0.0.0/gethook_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/gethook/gethook-cli/releases/download/v0.0.0/gethook_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "gethook"
  end

  test do
    system "#{bin}/gethook", "version"
  end
end
