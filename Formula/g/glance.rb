class Glance < Formula
  desc "TUI dashboard for managing GitHub pull requests"
  homepage "https://github.com/ch55secake/glance"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/glance/releases/download/v1.0.15/glance_1.0.15_darwin_arm64.tar.gz"
      sha256 "09c9099f15b05e91b151958e6c79b313831c6cb4cdfe8f3d5251488027c1938d"
    else
      url "https://github.com/ch55secake/glance/releases/download/v1.0.15/glance_1.0.15_darwin_amd64.tar.gz"
      sha256 "774984440b49302d7002ea7244f9d778b76e72dbb362463bc00d5a784f569ecb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/ch55secake/glance/releases/download/v1.0.15/glance_1.0.15_linux_arm64.tar.gz"
      sha256 "e35b33048752a3bca017f835bc513453e47c643c28cb93d8424f32660912b4c2"
    else
      url "https://github.com/ch55secake/glance/releases/download/v1.0.15/glance_1.0.15_linux_amd64.tar.gz"
      sha256 "add150ed53d927bfec0d76f324ff3847860622f605b1d3c1d99b15b4483106d2"
    end
  end

  def install
    bin.install "glance"
  end

  test do
    assert_predicate bin / "glance", :executable?
  end
end
