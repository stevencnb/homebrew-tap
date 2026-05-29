class Subgrove < Formula
  desc "Parallel feature worktrees for a git superproject with submodules"
  homepage "https://github.com/stevencnb/subgrove"
  url "https://github.com/stevencnb/subgrove/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "7b790986fb813fe3c86f563095d205b5e2b3e8efbc95701c9c7f10e81579cdbd"
  license "MIT"

  def install
    bin.install "subgrove"
    bash_completion.install "completions/subgrove.bash" => "subgrove"
    zsh_completion.install "completions/_subgrove"
  end

  test do
    assert_match "subgrove #{version}", shell_output("#{bin}/subgrove --version")
  end
end
