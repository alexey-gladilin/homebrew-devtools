class Apidev < Formula
  desc "Contract-driven API code generator CLI"
  homepage "https://github.com/alexey-gladilin/apidev"
  version "0.1.9"
  url "https://github.com/alexey-gladilin/apidev/releases/download/v0.1.9/apidev-0.1.9-macos-arm64-onedir.tar.gz"
  sha256 "0d8b47ac717a5623e49b34766ba2275ca97795681e06390f27c63fb12ce0f43e"

  def install
    candidate = Dir["**/apidev"].find { |p| File.file?(p) }
    odie "Could not find executable apidev inside onedir artifact" unless candidate
    runtime_dir = Pathname.new(candidate).dirname
    dest_dir = libexec/"apidev_runtime"
    dest_dir.mkpath
    runtime_dir.children.each do |entry|
      cp_r entry, dest_dir
    end
    target = dest_dir/"apidev"
    bin.install_symlink target => "apidev"
  end

  test do
    assert_match "apidev", shell_output("#{bin}/apidev --help")
  end
end
