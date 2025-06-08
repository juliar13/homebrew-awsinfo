class Awsmyinfo < Formula
  desc "AWSユーザーが切り替え可能なアカウントとロールを表示するCLIツール"
  homepage "https://github.com/juliar13/awsmyinfo"
  version "0.1.1"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-darwin-amd64"
      sha256 "af1ae1f345729cf6092ea10af8c53ec72e1812bf28122acbac540e6eb0c155c6"
    else
      url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-darwin-arm64"
      sha256 "acc104b175bc8f064c15aee67b2aaf7ed5ec0a72e1738005f876abdf762dde6b"
    end
  end
  
  on_linux do
    url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-linux-amd64"
    sha256 "8fad9fabdd398e5f6f00fdd2e3b686e0d0d3cdad236f5d37f3f886ae4da8c77d"
  end
  
  def install
    bin.install Dir["*"].first => "awsmyinfo"
  end
  
  test do
    system "#{bin}/awsmyinfo", "--version"
  end
end
