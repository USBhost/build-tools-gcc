# GCC toolchain build script

This is a script to build GCC toolchains targeting arm, arm64, and x86 devices
(primarily Android devices).


## Using the script

To build a toolchain, you will need to the
following:

+ A Linux distribution (the script has been tested on Ubuntu 17.04 and Arch Linux)
+ A decent processor and RAM (i5 and 8GB of RAM or more is preferred)
+ Core developer packages
    + For Arch: ```sudo pacman -S base-devel git autoconf-archive```
    + For Ubuntu: ```sudo apt-get install flex bison ncurses-dev texinfo gcc gperf patch libtool automake g++ libncurses5-dev gawk expat libexpat1-dev python-all-dev binutils-dev libgcc1:i386 bc libcloog-isl-dev libcap-dev autoconf autoconf-archive libgmp-dev build-essential gcc-multilib g++-multilib pkg-config libmpc-dev libmpfr-dev autopoint gettext liblzma-dev libssl-dev libz-dev```

Once you have set up your environment, run the following:

```bash
git clone https://github.com/USBhost/build-tools-gcc
cd build-tools-gcc
./build -h
```

The printout will show you how to run the script.

Example commands:

```bash
# Build a GNU 8.x toolchain for x86_64
./build -a x86_64 -s gnu -v 8 -V

# Build a Linaro 7.x toolchain for arm64
./build -a arm64 -s linaro -v 7 -V

# Build a Linaro 5.x toolchain for arm
./build -a arm -s linaro -v 5 -V
```

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

Pull requests are more than welcome as well. However, there is a particular coding style that should be followed:

+ All variables are uppercased and use curly braces: ```${VARIABLE}``` instead of ```$variable```
+ Four spaces for indents
+ Double brackets and single equal sign for string comparisons in if blocks: ```if [[ ${VARIABLE} = "yes" ]]; then```

Additionally, please be sure to run your change through shellcheck.net (either copy and paste the script there or download the binary and run `shellcheck build`).


## Credits/thanks

+ [nathanchance](https://github.com/nathanchance): For great modifications!
+ [frap129](https://github.com/frap129): For some modifications to update the script/components
+ [MSF-Jarvis](https://github.com/MSF-Jarvis): For testing the arm option
