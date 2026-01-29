class Gitgrip < Formula
  desc "Multi-repo workflow tool for synchronized branches, linked PRs, and atomic merges"
  homepage "https://github.com/laynepenney/gitgrip"
  url "https://registry.npmjs.org/gitgrip/-/gitgrip-0.4.1.tgz"
  sha256 "d8146a649a11be8c7587c5e618fb82a7831cbe3da33858d708f4e4d0bf3cf5a8"
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
