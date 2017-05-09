# A VisualSFM mirror

This repository mirrors [VisualSFM](http://ccwu.me/vsfm/) and its dependencies. It was tested on Ubuntu 16.04 and macOS Sierra (10.12).


## Ubuntu 16.04 and its derivatives

-	Install the required packages:

		sudo apt-get install libglew-dev libdevil-dev libgtk2.0-dev libglib2.0-dev libboost-all-dev liblapack-dev libblas-dev libgsl-dev

	The list of packages is not exhaustive and you may need to install other packages.

-	Build VisualSFM and other software:

		make


## macOS Sierra (10.12)

-	Install [XQuartz](http://www.xquartz.org).

-	Install the required packages using, for instance, [Homebrew](http://brew.sh):

		brew install glew devil boost gsl

	The list of packages is not exhaustive and you may need to install other packages.

-	Install gtk+ 2.24.28 or earlier:

		brew reinstall --with-x11 cairo
		brew install https://raw.githubusercontent.com/Homebrew/legacy-homebrew/99126a50c96b3c832d72f4531c116271f543eded/Library/Formula/gtk+.rb

	Or switch to such a version if it'd been installed at one point:

		brew switch gtk+ 2.24.28

-	Build VisualSFM and other software:

		make

