class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "c809f4b411ca66d0d15d0550a8de2a9d59d5c582eb799cd45efe91145cddb312"
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
