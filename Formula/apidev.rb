class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.1"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.1/apidev-0.3.1-macos-arm64.tar.gz"
  sha256 "b0fab6d99b309c620561328a25b8f1d23084aabd80e18f37dd2083cd77343d09"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
