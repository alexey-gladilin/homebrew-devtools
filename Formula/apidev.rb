class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.3"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.3/apidev-0.3.3-macos-arm64.tar.gz"
  sha256 "4b43741fd5bf1382d16ba73a686c476cb4362065b0db5de7438696eb92a560ae"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
