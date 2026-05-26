class Subgrove < Formula
  desc "Parallel feature worktrees for a git superproject with submodules"
  homepage "https://github.com/StevenChangZH/subgrove"
  url "https://github.com/StevenChangZH/subgrove/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a66cd551315baf50cadddf1a6e32daaced912411cec8166816b903fe473cc5dc"
  license "MIT"

  depends_on "git"

  def install
    bin.install "subgrove"
  end

  test do
    assert_match "subgrove #{version}", shell_output("#{bin}/subgrove --version")
  end
end
