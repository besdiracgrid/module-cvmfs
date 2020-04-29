#!/bin/sh

arch=x86_64-sl6
gcc_version=9.3.0

hpc_root="/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/${arch}"
gcc_root="${hpc_root}/gcc/${gcc_version}"


curdir=$(cd $(dirname "$0");pwd)

. "${hpc_root}/module/4.2.1/init/sh"
module purge

mkdir temp
cd temp

# Download and extract
wget "http://ftp.gnu.org/gnu/gcc/gcc-${gcc_version}/gcc-${gcc_version}.tar.gz"
tar -xf "gcc-${gcc_version}.tar.gz"
cd "gcc-${gcc_version}"

# Build
contrib/download_prerequisites

./configure --prefix="${gcc_root}" --enable-languages=c,c++,fortran --disable-multilib
make -j8
make install-strip

cd ../..

# Create modulefile
cp "${curdir}/../modulefiles/gcc/9.1.0" "${hpc_root}/modulefiles/gcc/${gcc_version}"

rm -rf temp
