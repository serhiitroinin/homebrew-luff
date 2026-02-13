class Libre < Formula
  desc "FreeStyle Libre 3 CGM data CLI via LibreLinkUp"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.0/libre-darwin-arm64.tar.gz"
      sha256 "2b38da1757ded11f065ffd0826e7b692694ef33161ecb48d2bca366904c079b5"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.0/libre-darwin-x64.tar.gz"
      sha256 "6c8e5e636275a937b84bb10cba73ec8792d71d39afdf85a5f9e5ca5ef42f63ef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.0/libre-linux-arm64.tar.gz"
      sha256 "7d3b830228829f2e2ad1ae5f3212eb3b9f64f6085dbe7a68310fe04d2f87e668"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/libre-v0.1.0/libre-linux-x64.tar.gz"
      sha256 "c175cd1d085c23a4d90d551b61ab8d1bb13ec3317e2f92c39993a9e1ca21d9bd"
    end
  end

  def install
    bin.install "libre"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/libre --version")
  end
end
