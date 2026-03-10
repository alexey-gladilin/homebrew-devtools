class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.3.0"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.3.0/apidev-0.3.0-macos-arm64.tar.gz"
  sha256 "70abd2ebe4a26effb00d7e97f2140f112736bf4a69fdcdc81270a7021477a593"

  def install
    bin.install "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
