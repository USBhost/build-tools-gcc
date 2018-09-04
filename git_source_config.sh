function setup_common_urls_git() {
    MPFR_BASE_URL="https://www.mpfr.org/mpfr-current/"
    GMP_BASE_URL="https://ftp.gnu.org/gnu/gmp/"
    BINUTILS_GIT_URL="https://git.linaro.org/toolchain/binutils-gdb.git"
    ISL_GIT_URL="git://repo.or.cz/isl.git"
    MPC_GIT_URL="https://scm.gforge.inria.fr/anonscm/git/mpc/mpc.git"
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
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.18"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="master"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_8() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.18"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-8-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_7() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.18"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-7-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_6() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.18"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-6-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_gnu_5() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.17.1"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="gcc-5-branch"

    setup_base_urls_git_gnu
}

function setup_variables_git_linaro_7() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.20"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/gcc-7-integration-branch"

    setup_base_urls_git_linaro
}

function setup_variables_git_linaro_6() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.20"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/gcc-6-integration-branch"

    setup_base_urls_git_linaro
}

function setup_variables_git_linaro_5() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.17.1"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/gcc-5-integration-branch"

    setup_base_urls_git_linaro
}

function setup_variables_git_linaro_4() {
    BINUTILS="binutils-2_31-branch"
    GMP="gmp-6.1.2"
    MPFR="mpfr-4.0.1"
    MPC="master"
    ISL="isl-0.17.1"
    GLIBC="glibc-2.28"
    LINUX="v4.18"
    GCC="linaro-local/releases/linaro-4.9-2017.01"

    setup_base_urls_git_linaro
}
