class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.6"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.6/apidev-0.3.6-macos-arm64.tar.gz"
  sha256 "3ae32554cf8f3c47aa5376595518634b977d5d641f36e1ba7d6806d22d9f8448"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
