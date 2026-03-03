class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.16"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.16/apidev-0.1.16-macos-arm64.tar.gz"
  sha256 "4a00d657e1e924679dcacecb5fc1b88e3c628d9ca8fad60ad81a316c13c09a71"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
