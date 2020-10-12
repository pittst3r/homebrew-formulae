class Kpup < Formula
  desc "Kill Process Using Port"
  homepage "https://github.com/pittst3r/kpup"
  url "https://github.com/pittst3r/kpup/archive/v0.1.3.tar.gz"
  sha256 "6a2a7c72a70cd1f19877eca840a64b429fd050c2295802ed3500f9d36c7f024e"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "0.1.3", shell_output("#{bin}/kpup --version")
  end
end
