class Sift < Formula
  desc "Match music against MusicBrainz, tag it, and file it into a library"
  homepage "https://github.com/radiosilence/sift"
  version "0.3.5"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.5/sift-macos-arm64.tar.gz"
      sha256 "70b4d8a1e8d7ef56f21bec7f92d4c28d257e265fe3b757ff04aa5105507c3c89"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.5/sift-macos-x86_64.tar.gz"
      sha256 "5164cb1497d0b77a3c77a3fbe517473fad4c84908641737b314b6abcd336d053"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.5/sift-linux-arm64.tar.gz"
      sha256 "df7f2a9b4ee741e395747f52c1a5bdbfb3cc845def8dd08e873b5c36978d2251"
    end
    on_intel do
      url "https://github.com/radiosilence/sift/releases/download/v0.3.5/sift-linux-x86_64.tar.gz"
      sha256 "77358d8d68cf3837aaa5c5d7087ca97aacca7c084582ab4fc7011fb1253264f2"
    end
  end
  def install
    bin.install "sift"
  end
  test do
    assert_match "sift", shell_output("#{bin}/sift --version")
  end
end
