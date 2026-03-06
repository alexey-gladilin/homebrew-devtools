class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.2.2"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.2.2/apidev-0.2.2-macos-arm64.tar.gz"
  sha256 "b91fc66d3a6b79f068e9a6fc1ae30cff1c488b6dc27a2c179ff8368e6c32e948"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
