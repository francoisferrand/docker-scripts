class DockerScripts < Formula
  desc "A collection of scripts which simplify working with docker."
  homepage "https://github.com/Typz/docker-scripts"

  url "https://github.com//Typz/docker-scripts.git", :tag => "1.3"
  bottle :unneeded

  head "https://github.com/Typz/docker-scripts.git"

  def install
	bin.install "docker-certs"
	bin.install "docker-env"
	bin.install "docker-copy-images"
  bin.install "kubectx-delete"
  bin.install "kubectx-import"

	bash_completion.install "completion/docker-env.bash" => "docker-env"
  end
end
