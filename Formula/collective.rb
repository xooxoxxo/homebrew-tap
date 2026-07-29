class Collective < Formula
  desc "Searchable directory of developer commands with TUI and flashcards"
  homepage "https://github.com/xooxoxxo/collective"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.4.0/collective-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "ba161dad56e9352b05579042b05a5e2f5fb08ce6158e6392280862ce48bec4a6"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.4.0/collective-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "890a548b0332278af0c569395cd814d92eb71d1aecf7047a9245ccbd4fd5bb8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/xooxoxxo/collective/releases/download/v0.4.0/collective-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "379c0d3ac489441d9d8816737ca996cf49886a4437a31c08fdc10f5df139b68a"
    else
      url "https://github.com/xooxoxxo/collective/releases/download/v0.4.0/collective-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4063f9f5cbb3eda560dd17d4f8fa14eed0c9191d3f9df4380081d2a5c7dfb2d8"
    end
  end

  def install
    bin.install "collective"
  end

  test do
    assert_match "collective", shell_output("#{bin}/collective --help")
  end
end
