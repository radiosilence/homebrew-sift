class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.8.0"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.8.0/sift-macos-arm64.tar.gz"
    sha256 "736ab0c1d52f069224a76cc600133539b63b16b1eb0db3116fff1ed0697d0751"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.8.0/sift-linux-arm64.tar.gz"
      sha256 "72833940935ccc35640c5a83f82be93ef5969644a127c244858c32ea10d40a55"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.8.0/sift-linux-x86_64.tar.gz"
      sha256 "81821eb17c884ef2b9dabe54d3802ca07ad9f0866363363d34c7f0de9b18a97e"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
