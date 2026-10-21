class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.8.1"
  license "MIT"
  on_macos do
    depends_on arch: :arm64
    url "https://github.com/radiosilence/sift/releases/download/v0.8.1/sift-macos-arm64.tar.gz"
    sha256 "2905c8531536b07f0f3c69e3fa9f61bd69b2e0097e7f23cb61cecb63c2e85f9a"
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.8.1/sift-linux-arm64.tar.gz"
      sha256 "9cd79d329884d70af649487657b2a88c8627bb73e1c49444bc6403b463747387"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.8.1/sift-linux-x86_64.tar.gz"
      sha256 "b935bac864d96a32da4d76c19f5bb262421f4757b634904883b9b3e5a8d52ab0"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
