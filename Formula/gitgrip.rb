class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.5.3.tar.gz"
  sha256 "8781136cb19b3f28f6d03e4c2e5356a46073cf1f90f087fcb5a2aff4fbae0ab8"
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
