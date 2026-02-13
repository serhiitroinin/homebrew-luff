class Whoop < Formula
  desc "WHOOP health data CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.0/whoop-darwin-arm64.tar.gz"
      sha256 "41f8c46c6d26b80bd38bbcc29f8fcbea0faae51030fb3f74d15924349aba344f"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.0/whoop-darwin-x64.tar.gz"
      sha256 "39e9e7ae45fb7ce855222ee391fc88a81c7d81be427e1675e1928a396236c35e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.0/whoop-linux-arm64.tar.gz"
      sha256 "6d2d71d21f1890c4c3dbf20ec09ac38903cf6ec36fa6c2ae43d47190cd4733d8"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.2.0/whoop-linux-x64.tar.gz"
      sha256 "c65380a589cfc836f5f5b0c67cdf1a6cdbe22129eb7d9dfa76e2acc60d226416"
    end
  end

  def install
    bin.install "whoop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoop --version")
  end
end
