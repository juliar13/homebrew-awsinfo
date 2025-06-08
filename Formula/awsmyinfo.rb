class Awsmyinfo < Formula
  desc "AWSユーザーが切り替え可能なアカウントとロールを表示するCLIツール"
  homepage "https://github.com/juliar13/awsmyinfo"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-darwin-amd64"
      sha256 "7f938a4678f5e5de7a66522749e052a03800dcdcff9933212c79fb96d649e68d"
    else
      url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-darwin-arm64"
      sha256 "ad1c368f28be8b6a52748d5d35d322fb6ae5c01bcd9fa2c67e3e00843f2bf973"
    end
  end
  
  on_linux do
    url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-linux-amd64"
    sha256 "858402fc4e18e06d9f10c5566fc06aa9461455d862c88b529b8c207ff9719b06"
  end
  
  def install
    bin.install Dir["*"].first => "awsmyinfo"
  end
  
  test do
    system "#{bin}/awsmyinfo", "--version"
  end
end
