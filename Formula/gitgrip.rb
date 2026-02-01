class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"

  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.5.6.tar.gz"
  sha256 "699269977595bb748c059224b0096327abdf3fc9b98e0dee236f7d39a57b08b3"

  license "MIT"

  depends_on "rust" => :build
  depends_on "openssl@3"
  depends_on "pkg-config" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "Multi-repo workflow tool", shell_output("#{bin}/gr --help")
  end
end
