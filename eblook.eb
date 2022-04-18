require "formula"

class Eblook < Formula
  homepage "http://ikazuhiro.s206.xrea.com/staticpages/index.php/eblook"
  url "http://green.ribbon.to/~ikazuhiro/lookup/files/eblook-1.6.1+media-20150724.tar.gz"
  version "20150724"
  sha256 "08e154eae27cc061e0c67dc9c0c346707defbb2bbfdb757ee00f22af4c059e1b"

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
