class Whoop < Formula
  desc "WHOOP health data CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.1/whoop-darwin-arm64.tar.gz"
      sha256 "492a5770cb04ae066e96307101927d58aaeddafce8ee1b937a892802d755efa9"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.1/whoop-darwin-x64.tar.gz"
      sha256 "dfb7d69eb96125de87d54d85d62798967534c87c53b333797d10c72987d12062"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.1/whoop-linux-arm64.tar.gz"
      sha256 "89530e4cd621493824f6cca7514e6da803daeb5b5dc4bc50524463a83554ca03"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.1/whoop-linux-x64.tar.gz"
      sha256 "48d9d058a0f116e3a7fc868eded9d69ae85099407d0100e6715bfe6c095951a8"
    end
  end

  def install
    bin.install "whoop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoop --version")
  end
end
