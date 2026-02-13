class Mail < Formula
  desc "Email CLI for Gmail and Fastmail"
  homepage "https://github.com/serhiitroinin/luff"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.1.0/mail-darwin-arm64.tar.gz"
      sha256 "51b903a3ca884ded0c113c3e078a9b566b62fa2a3595194e0eb4172ac8da2ff8"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.1.0/mail-darwin-x64.tar.gz"
      sha256 "abe19ece54c6dffbc4e6be690f57b66e65b6a3791fcaff8e206a05fe5d124569"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.1.0/mail-linux-arm64.tar.gz"
      sha256 "de79837e7a558aa6070642973e40898ba27d3d49a06997c6dc182c7b37f35956"
    else
      url "https://github.com/serhiitroinin/luff/releases/download/mail-v0.1.0/mail-linux-x64.tar.gz"
      sha256 "511f46a84585cc0343c011ce7dbb0d14e96916efc6b501c5ae3cf79f708ab95c"
    end
  end

  def install
    bin.install "mail"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mail --version")
  end
end
