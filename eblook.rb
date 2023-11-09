require "formula"

class Eblook < Formula
  homepage "http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook"
  url "http://green.ribbon.to/~ikazuhiro/lookup/files/eblook-1.6.1+media-20220426.tar.gz"
  version "20220426"
  sha256 "e83c9521239ee046d37efa7b4cca356c1a3eac4e35a3153c90d6dd24c1cb0c0f"

  depends_on 'ebu'

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}",
                          "--with-ebu-conf=/usr/local/etc/ebu.conf"
    system "make", "install"
  end
end
