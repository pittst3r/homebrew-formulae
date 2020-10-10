class Kpup < Formula
  desc "Kill Process Using Port"
  homepage "https://github.com/pittst3r/kpup"
  url "https://github.com/pittst3r/kpup/archive/v0.1.1.tar.gz"
  sha256 "7ce80f346ef0f3c0ee61dfcc8782f98ab4a49fde182b7b34855fb2784ff1c636"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.1", shell_output("#{bin}/kpup --version")
  end
end
