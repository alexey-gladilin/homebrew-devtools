class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.12"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.12/apidev-0.1.12-macos-arm64.tar.gz"
  sha256 "df3dbde2e1587e3502d8e771932f3132ea27181df9ef5ac7fd27f1f31893e7c9"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
