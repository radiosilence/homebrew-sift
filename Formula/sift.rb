class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.5.1"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.1/sift-macos-arm64.tar.gz"
      sha256 "664d40f4a17e27a5c84c8adb49b3de4a213f6109969df0019c273c03f1d17b3a"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.1/sift-macos-x86_64.tar.gz"
      sha256 "cf00d5c60ab6ad8be719eff512fc589ea1ae673253490492ca89ddafab41a61d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.1/sift-linux-arm64.tar.gz"
      sha256 "d0b9acee8ac416418d5e054b1574d64255594786493cdac792ceeea6cd22c136"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.5.1/sift-linux-x86_64.tar.gz"
      sha256 "b3dcd5f10f2b89bec8f40e84107c572ec59cda4c59e4522a593e0342dab65874"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
