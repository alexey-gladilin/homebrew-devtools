class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.8"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.8/apidev-0.1.8-macos-arm64.tar.gz"
  sha256 "25eb787ac8d4e255cd62c6f258ac3ccc5a8f019b951cacfad5539aecf825e0bd"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
