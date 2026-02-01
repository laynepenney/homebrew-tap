class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.5.5.tar.gz"
  sha256 "0e267c86f2f645938f1626725b1a4b2ee4759e2d4b9cd9169d94f494bd65524d"
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
