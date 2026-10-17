class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.5.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.0/sift-macos-arm64.tar.gz"
      sha256 "9a7563e2e64cb65ee73b808202035b0798fd8b2a94a339f4a0d1bd804d5cd48a"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.0/sift-macos-x86_64.tar.gz"
      sha256 "4ad7841a193030ba29f9726c1f009ab6801110f1d986f9465030b7c40091a6f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.0/sift-linux-arm64.tar.gz"
      sha256 "e4db46eb7474a040014c4e7e231b6c6b944b8c70e09d9b3adc61bda97c983ba1"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.0/sift-linux-x86_64.tar.gz"
      sha256 "23af1fba771dde71e1b80362904582aea67800841544df84bdc6219a2b4476f9"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
