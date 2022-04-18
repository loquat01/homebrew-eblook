require "formula"

class Eblook < Formula
  homepage "http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook"
  url "http://green.ribbon.to/~ikazuhiro/lookup/files/eblook-1.6.1+media-20200414.tar.gz"
  version "20200414"
  sha256 "ebd5886176c2d52aea9077ef441af06b9181bda2ac4395def55ff305c288094e"

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
