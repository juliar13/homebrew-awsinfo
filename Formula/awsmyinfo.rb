class Awsmyinfo < Formula
  desc "AWSユーザーが切り替え可能なアカウントとロールを表示するCLIツール"
  homepage "https://github.com/juliar13/awsmyinfo"
  version "0.1.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-darwin-amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # リリース時に実際のSHA256に更新
    else
      url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-darwin-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000" # リリース時に実際のSHA256に更新
    end
  end
  
  on_linux do
    url "https://github.com/juliar13/awsmyinfo/releases/download/v#{version}/awsmyinfo-linux-amd64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000" # リリース時に実際のSHA256に更新
  end
  
  def install
    bin.install Dir["*"].first => "awsmyinfo"
  end
  
  test do
    system "#{bin}/awsmyinfo", "--version"
  end
end
