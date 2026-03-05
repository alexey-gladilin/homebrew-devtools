class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.27"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.27/apidev-0.1.27-macos-arm64.tar.gz"
  sha256 "e69f373b7f49e75d940fab1f76d2a0b69ab0c6662a222eca484aa3e3768cb772"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
