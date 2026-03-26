class Cwal < Formula
  desc "Blazing-fast pywal-like color palette generator written in C"
  homepage "https://github.com/nitinbhat972/cwal"
  url "https://github.com/nitinbhat972/cwal/archive/refs/tags/v0.8.2.tar.gz"
  sha256 "08312d2fa120404ed0ebab9a14c934e8f076abe9eeaa862b420e6d22f69b3aae"
  license "GPL-3.0-or-later"

  depends_on "cmake" => :build
  depends_on "pkgconf" => :build
  depends_on "imagemagick"
  depends_on "libimagequant"
  depends_on "lua"

  def install
    system "cmake", "-B", "build", "-DCMAKE_BUILD_TYPE=Release", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end
end
