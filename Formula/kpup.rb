class Kpup < Formula
  desc "Kill Process Using Port"
  homepage "https://github.com/pittst3r/kpup"
  url "https://github.com/pittst3r/kpup/archive/v0.1.0.tar.gz"
  sha256 "d95a007059c9df57de0348a04bbba94fd1f30b343a3e61e5092afd8c09edfe29"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/kpup --version")
  end
end
