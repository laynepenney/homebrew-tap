class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://github.com/laynepenney/gitgrip/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "24e7622a12c94d9b7d0b840fef6a91aa988d103d09287e2d5c036bd40cadc8ef"
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
