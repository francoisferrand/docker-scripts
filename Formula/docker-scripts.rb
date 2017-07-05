class DockerScripts < Formula
  desc "A collection of scripts which simplify working with docker."
  homepage "https://github.com/Typz/docker-scripts"
  #version "1.0.0"

  head "https://github.com/Typz/docker-scripts.git"

  def install
	bin.install "docker-certs"
	bin.install "docker-env"
	bin.install "docker-copy-images"

	bash_completion.install "completion/docker-env.bash" => "docker-env"
  end
end
