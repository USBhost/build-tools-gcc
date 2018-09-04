function setup_common_urls_tar() {
    MPFR_BASE_URL="https://www.mpfr.org/mpfr-current/"
    GMP_BASE_URL="https://ftp.gnu.org/gnu/gmp/"
    MPC_BASE_URL="https://ftp.gnu.org/gnu/mpc/"
    GLIBC_BASE_URL="https://ftp.gnu.org/gnu/glibc/"
    LINUX_BASE_URL="https://cdn.kernel.org/pub/linux/kernel/v4.x/linux-"
    BINUTILS_BASE_URL="https://ftp.gnu.org/gnu/binutils/binutils-"
    ISL_BASE_URL="http://isl.gforge.inria.fr/"
}

function setup_base_urls_tar_gnu() {
    GCC_BASE_URL="https://mirrors.kernel.org/gnu/gcc/"  

    setup_common_urls_tar
}

function setup_base_urls_tar_linaro() {
    GCC_BASE_URL="https://git.linaro.org/toolchain/gcc.git/snapshot/gcc-"  

    setup_common_urls_tar
}

function setup_variables_tar_gnu_8() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.18"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="gcc-8.2.0"

    setup_base_urls_tar_gnu
}

function setup_variables_tar_gnu_7() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.18"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="gcc-7.3.0"

    setup_base_urls_tar_gnu
}

function setup_variables_tar_gnu_6() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.18"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="gcc-6.4.0"

    setup_base_urls_tar_gnu
}

function setup_variables_tar_gnu_5() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.17.1"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="gcc-5.5.0"

    setup_base_urls_tar_gnu
}

function setup_variables_tar_linaro_7() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.20"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="linaro-snapshot-7.3-2018.06"

    setup_base_urls_tar_linaro
}

function setup_variables_tar_linaro_6() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.20"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="linaro-snapshot-6.4-2018.06"

    setup_base_urls_tar_linaro
}

function setup_variables_tar_linaro_5() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.17.1"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="linaro-5.5-2017.10"

    setup_base_urls_tar_linaro
}

function setup_variables_tar_linaro_4() {
    BINUTILS="2.31"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="mpc-1.1.0"
    ISL="isl-0.17.1"
    GLIBC="glibc-2.28"
    LINUX="4.18"
    GCC="linaro-4.9-2017.01"
    ISL="isl-0.17.1"

    setup_base_urls_tar_linaro
}
