class PanUtils < Formula
  desc "Miscellaneous Utilities"
  homepage "https://github.com/ludwig/pan-utils.git"
  #url "https://github.com/ludwig/pan-utils/archive/v0.1.0.tar.gz"
  #sha256 "b1b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3b3"
  head "https://github.com/ludwig/pan-utils.git", :branch => "main"
  license "null"

  def install
    system "git", "clone", "git@yappa:scratch/pan-utils.git", "pan-utils"
    bin.install Dir["pan-utils/bin/*"]
  end

  def caveats
    <<~EOS
      For now, this formula only supports installation from the HEAD branch.
      Please use the following command to install:
        brew install --HEAD pan-utils
    EOS
  end
end
