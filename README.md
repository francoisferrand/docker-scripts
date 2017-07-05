Docker Scripts
--------------

This is a collection of scripts which simplify working with docker.
This is somewhat redundant with `docker-machine`, but helps when working with manually
configured hosts.

* `docker-env` : allows managing docker hosts in a way similar to docker-machine.
* `docker-certs` : allows generating SSL certificates for securing docker daemon.
* `docker-copy-images` : allows bulk copying images from one registry to another.

## Installation

* Install Homebrew (on macos or Linux)

	```
	macoS:~$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	Linux:~$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
	```

* Add `Typz/docker-scripts` tap

	```
	brew tap Typz/docker-scripts https://github.com/Typz/docker-scripts.git
	```

* Install `docker-scripts` package

	```
	brew install docker-scripts --HEAD
	```
