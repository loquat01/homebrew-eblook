require "formula"

class Eblook < Formula
  homepage "http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook"
  url "http://green.ribbon.to/~ikazuhiro/lookup/files/eblook-1.6.1+media-20220426.tar.gz"
  version "20220426"
  sha256 "0a26ac65567bc2854245289040f5689952ba23925dff9faeae62471c475c3569"

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
