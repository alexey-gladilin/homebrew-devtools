class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.10"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.10/apidev-0.1.10-macos-arm64.tar.gz"
  sha256 "d09d6e21f5bdf7748c76d20ebc7d61058a2277f30e6943d8c450c224376ae103"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
