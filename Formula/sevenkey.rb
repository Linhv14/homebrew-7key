class Sevenkey < Formula
  desc "Give AI agents and CI your secrets without letting them see them"
  homepage "https://7key.online"
  url "https://registry.npmjs.org/@7key/cli/-/cli-1.4.0.tgz"
  sha256 "c5cf98a1fa3387d81209b27564c096cb59bfcafeddb4326935cc226ed0a085b8"
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
