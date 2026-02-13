class Whoop < Formula
  desc "WHOOP health data CLI"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.1.0/whoop-darwin-arm64.tar.gz"
      sha256 "5435587f2f7f8e4a58a059e2481abe665a7bff37da994114d85b4eeaef29260b"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.1.0/whoop-darwin-x64.tar.gz"
      sha256 "1867fe199f35be0fafae069c7cc13da8c764b6f4700323328531f9389efbc26a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.1.0/whoop-linux-arm64.tar.gz"
      sha256 "23149b24547807dd1b6a99b265e3a0a0a97a77c50823f65aa6a57e689db48316"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/whoop-v0.1.0/whoop-linux-x64.tar.gz"
      sha256 "0cb23cd505c696bef80013dbe2e6ceb62ffe636bb360d53682da5b8816578fc0"
    end
  end

  def install
    bin.install "whoop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/whoop --version")
  end
end
