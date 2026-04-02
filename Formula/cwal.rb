class Cwal < Formula
  desc "Blazing-fast pywal-like color palette generator written in C"
  homepage "https://github.com/nitinbhat972/cwal"
  url "https://github.com/nitinbhat972/cwal/archive/refs/tags/v0.8.3.tar.gz"
  sha256 "4fca5137a753c11ab63f11b359d8c0c195ce4eeab23004cf5e7bcf110f14ac59"
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
