function setup_common_urls_git() {
    MPFR_BASE_URL="https://www.mpfr.org/mpfr-current/"
    GMP_BASE_URL="https://ftp.gnu.org/gnu/gmp/"
    MPC_BASE_URL="https://ftp.gnu.org/gnu/mpc/"
    ISL_BASE_URL="http://isl.gforge.inria.fr/"
    BINUTILS_GIT_URL="https://git.linaro.org/toolchain/binutils-gdb.git"
    GLIBC_GIT_URL="git://sourceware.org/git/glibc.git"
    LINUX_GIT_URL="git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"
}

function setup_base_urls_git_gnu() {
    GCC_GIT_URL="git://gcc.gnu.org/git/gcc.git"

    setup_common_urls_git
}

function setup_base_urls_git_linaro() {
    GCC_GIT_URL="https://git.linaro.org/toolchain/gcc.git"

    setup_common_urls_git
}

function setup_variables_git_gnu_9() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.18"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="master"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_8() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.18"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-8-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_7() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.18"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-7-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_6() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.18"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-6-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_5() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.17.1"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-5-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_linaro_7() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.20"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/gcc-7-integration-branch"

    setup_base_urls_git_linaro
}

function setup_variables_git_linaro_6() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.20"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/gcc-6-integration-branch"

    setup_base_urls_git_linaro
}

function setup_variables_git_linaro_5() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.17.1"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/gcc-5-integration-branch"

    setup_base_urls_git_linaro
}

function setup_variables_git_linaro_4() {
    MPFR="mpfr-4.0.1"
    GMP="gmp-6.1.2"
    MPC="mpc-1.1.0"
    ISL="isl-0.17.1"
    BINUTILS="binutils-2_31-branch"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/releases/linaro-4.9-2017.01"

    setup_base_urls_git_linaro
}
