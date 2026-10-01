class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.3.6"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.6/sift-macos-arm64.tar.gz"
      sha256 "c6ef88e6da622e4ae887a4326a5329d69d9f8cbbcacdf3a0de4c78ecae28bf1c"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.6/sift-macos-x86_64.tar.gz"
      sha256 "dfa75b2de2a30d780b5fdb62f2e029c129e39843aed403f64b1b5c110b6fa86e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.6/sift-linux-arm64.tar.gz"
      sha256 "51f1148acc6fd61e3b9d5882645837b6f4ea69da75d2ba67b4502b3ae9cef809"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.6/sift-linux-x86_64.tar.gz"
      sha256 "901387e06fe216f415b337bfad95cf2836839343d6fb1a9f6bdc29babf5fbe5c"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
