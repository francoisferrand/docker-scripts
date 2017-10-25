class CtopBin < Formula
  version '0.6.1'
  desc "Top-like interface for container metrics."
  homepage "https://github.com/bcicen/ctop"

  if /darwin/ =~ RUBY_PLATFORM
    url "https://github.com/bcicen/ctop/releases/download/v#{version}/ctop-#{version}-darwin-amd64",
        :using => :nounzip
    sha256 "fea5e0dd7380330f3b4dc796a6858e7bde557880983b5cf99bcb8f4655287072"
  elsif /linux/ =~ RUBY_PLATFORM
    url "https://github.com/bcicen/ctop/releases/download/v#{version}/ctop-#{version}-linux-amd64",
        :using => :nounzip
    sha256 "a0e5e3b5cc0bb1905b756a8b817a727f71ea8fe645aba54c7324491efa73f96f"
  end

  conflicts_with "ctop"

  def install
    system 'mv ctop-* ctop'
    system 'chmod +x ctop'
    bin.install "ctop"
  end
end
