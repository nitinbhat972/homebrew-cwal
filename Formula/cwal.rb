class Cwal < Formula
  desc "Blazing-fast pywal-like color palette generator written in C"
  homepage "https://github.com/nitinbhat972/cwal"
  url "https://github.com/nitinbhat972/cwal/archive/refs/tags/v0.8.5.tar.gz"
  sha256 "833eb641368061c5ea453cbde25e3175e3e32cfb68842e92290209f4bf99f459"
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "imagemagick"
  depends_on "libimagequant"
  depends_on "luajit"

  def install
    system "cmake", "-B", "build", "-DCMAKE_BUILD_TYPE=Release", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
