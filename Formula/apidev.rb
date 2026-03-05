class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.26"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.26/apidev-0.1.26-macos-arm64.tar.gz"
  sha256 "973257c228e2c87572d9dccca6120a03eca4e3c38fd116cefb0e536ade5d82ea"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
