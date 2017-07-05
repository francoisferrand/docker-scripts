class DockerScripts < Formula
  desc "A collection of scripts which simplify working with docker."
  homepage "https://github.com/Typz/docker-scripts"
  #version "1.0.0"

  head do
    url "https://github.com/Typz/docker-scripts.git"
  end

  def install
	bin.install "docker-certs"
	bin.install "docker-env"
	bin.install "docker-copy-images"
  end
end
