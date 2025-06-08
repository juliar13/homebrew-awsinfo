class Awsinfo < Formula
  desc "AWSユーザーが切り替え可能なアカウントとロールを表示するCLIツール"
  homepage "https://github.com/juliar13/awsinfo"
  version "0.2.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/juliar13/awsinfo/releases/download/v#{version}/awsinfo-darwin-amd64"
      sha256 "e03c18b36869a28fff879669f36cc119cae4ded05a174b294a9e0b1c1642e6cc"
    else
      url "https://github.com/juliar13/awsinfo/releases/download/v#{version}/awsinfo-darwin-arm64"
      sha256 "d24456f7c6a56d212b8cd4960d920630126117a1abd8996255dddda4b1d1eb95"
    end
  end
  
  on_linux do
    url "https://github.com/juliar13/awsinfo/releases/download/v#{version}/awsinfo-linux-amd64"
    sha256 "9d34bedb69a40102cb4d4243f54ff9dc6e6b5cb5ec63c75a848736c5109e5ca2"
  end
  
  def install
    bin.install Dir["*"].first => "awsinfo"
  end
  
  test do
    system "#{bin}/awsinfo", "--version"
  end
end