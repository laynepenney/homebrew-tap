class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://registry.npmjs.org/gitgrip/-/gitgrip-0.3.0.tgz"
  sha256 "2ee855892c0ec30a1774c6300b4852e8441697b487a2da5dc7cdf2d8122c2c06"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Multi-repo workflow tool", shell_output("#{bin}/gr --help")
  end
end
