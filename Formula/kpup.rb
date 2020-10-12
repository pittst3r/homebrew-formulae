class Kpup < Formula
  desc "Kill Process Using Port"
  homepage "https://github.com/pittst3r/kpup"
  url "https://github.com/pittst3r/kpup/archive/v0.1.4.tar.gz"
  sha256 "ef059cb371fd6937fcd730d6c9f9e3a7ca38fc97066e089027dec806f49aaafe"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.4", shell_output("#{bin}/kpup --version")
  end
end
