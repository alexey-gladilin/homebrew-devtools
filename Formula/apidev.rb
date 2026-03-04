class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.23"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.23/apidev-0.1.23-macos-arm64.tar.gz"
  sha256 "a7f8fc218b2b2cbd5014d16d0935013e9ff29b52d3bb5313c78efc1b27b28d2e"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
