# GCC toolchain build script

This is a script to build GCC toolchains targeting arm and arm64 devices
(primarily Android devices).


## Using the script

To build a toolchain, you will need to the
following:

+ A Linux distribution (the script has been tested on Ubuntu 17.04 and Arch Linux)
+ A decent processor and RAM (i5 and 8GB of RAM or more is preferred)
+ Core developer packages
    + For Arch: the base-devel package should be enough
    + For Ubuntu: ```sudo apt-get install flex bison ncurses-dev texinfo gcc gperf patch libtool automake g++ libncurses5-dev gawk subversion expat libexpat1-dev python-all-dev binutils-dev libgcc1:i386 bc libcloog-isl-dev libcap-dev autoconf libgmp-dev build-essential gcc-multilib g++-multilib pkg-config libmpc-dev libmpfr-dev```

Once you have set up your environment, run the following:

```bash
git clone https://github.com/nathanchance/build-tools-gcc
cd build-tools-gcc
./build -h
```

The printout will show you how to run the script. A fuller explananation of the
parameters is below


## Parameters

NOTE: Multiple parameters can and will almost always be used. See examples below.

+ ```-a | --arm:``` This allows the user to build an arm toolchain, instead of an arm64 toolchain.
+ ```-b | --build:``` Build the toolchain. This parameter MUST be added for the toolchain to build if you add any parameters. Running just ```./build``` will use this.
+ ```-c | --clean:``` Clean up from a previous build. Do this after the first download after every build.
+ ```-d | --download:``` Downloads the necessary components to compile. This MUST be added before building for the first time.
+ ```-h | --help:``` Run the help menu then exits. Use this whenever you forget how to run the script.
+ ```-l | --linaro:``` Builds a Linaro toolchain from the latest release branch, instead of the standard GNU source
+ ```-nt | --no-tmpfs:``` Do not mount the build directories on tmpfs (use this if you don't have a lot of RAM)
+ ```-p | --package:``` Compress toolchain after building; specify either gz or xz. Example ```-p gz```
+ ```-u | --update:``` Updates the git repos that were downloaded. Recommended before any build.
+ ```-v | --version:``` Specify which GCC version to build (4, 5, 6, 7, or 8 [GNU only]). Example: ```-v 7```

Example commands:

```bash
# Build a Linaro toolchain for the first time
# Download components, checkout Linaro, then build
./build -d -l -b

# Build a GNU toolchain after a few compilations
# Update sources, clean previous compilation, then build
./build -u -c -b
```

If you want to switch between GNU and Linaro builds, ALWAYS run update so that
it checks out the proper branch.


## After compilation

Once it is done building, you will have a folder with the compiled toolchain as well as either a tar.xz or tar.gz file (depending on if you passed -p or not).

If the toolchains are compressed, move them into your directory of choice and run the following commands:

For xz compression:

```bash
tar -xvf <toolchain_name>.tar.xz --strip-components=1
```

For gz compression:

```bash
tar -xvzf <toolchain_name>.tar.gz --strip-components=1
```

After that, point your cross compiler to the proper file and compile! This is
an easy shortcut for kernels (when run in the directory you extracted the
toolchain in):

```bash
# for arm64
export CROSS_COMPILE=$(pwd)/bin/aarch64-linux-gnu-

# for arm
export CROSS_COMPILE=$(pwd)/bin/arm-linux-gnueabi-
```


## Pull requests/issues

If you have any issues with this script, feel free to open an issue!

Pull requests are more than welcome as well. However, I will only
accept a particular coding style:

+ All variables are uppercased and use curly braces: ```${VARIABLE}``` instead of ```$variable```
+ Four spaces for indents
+ All conditions must be one line to start: ```if [[ conditions ]]; then```
+ Double brackets and single equal sign for string comparisons in if blocks: ```if [[ ${VARIABLE} = "yes" ]]; then```


## Credits/thanks

+ [USBHost](https://github.com/USBhost): For the initial script
+ [frap129](https://github.com/frap129): For some modifications to update the script/components
+ [MSF-Jarvis](https://github.com/MSF-Jarvis): For testing the arm option
