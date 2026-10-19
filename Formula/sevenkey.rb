class Sevenkey < Formula
  desc "Give AI agents and CI your secrets without letting them see them"
  homepage "https://7key.online"
  url "https://registry.npmjs.org/@7key/cli/-/cli-1.4.1.tgz"
  sha256 "ebf8f650fe08020f259a651c90fcdf86b41de350c6b1322afbdda00b695cfcab"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Usage: 7key", shell_output("#{bin}/7key help")
  end
end
