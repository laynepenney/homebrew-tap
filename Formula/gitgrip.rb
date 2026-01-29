class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://registry.npmjs.org/gitgrip/-/gitgrip-0.3.1.tgz"
  sha256 "1de4164e6e12c56d2ca04599d01abfed88667b1377c93f85c695954bafba6a17"
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
