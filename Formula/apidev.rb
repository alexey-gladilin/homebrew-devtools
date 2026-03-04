class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.22"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.22/apidev-0.1.22-macos-arm64.tar.gz"
  sha256 "e8fac98804eaec2960e9578ff9223a93e9b53abd8323c5900ebc71c774972aba"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
