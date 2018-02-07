class Serve < Formula
  desc "Bundle any script as a macOS service."
  homepage "https://max-os.github.io/serve"
  url "https://github.com/max-os/serve/archive/master.tar.gz"
  #sha256 ""

  #depends_on : => :

  #bottle :unneeded

  def install # TODO https://docs.brew.sh/Formula-Cookbook.html
    #system "make", "install"

    #lib.install Dir["lib/*"]

    #libexec.install ""
    bin.install "src/cli.zsh" #.install_symlink

    #man1.install TODO https://github.com/Homebrew/homebrew-core/search?utf8=✓&q=man.install&type=
  end

  test do
    system "#{bin}/serve", "-h" #--help
  end
end
