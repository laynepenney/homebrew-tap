class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"

  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.9.0.tar.gz"
  sha256 "d42735331b73c1bc47662b60f7332793b39dba25b51f681715748f5c83ed7ecf"

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
