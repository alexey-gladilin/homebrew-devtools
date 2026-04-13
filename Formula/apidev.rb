class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.10"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.10/apidev-0.3.10-macos-arm64.tar.gz"
  sha256 "6c1e8387fa76ca8f1762cccc506b62167fc24a8cbefc95840cd3ad6b742be938"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
