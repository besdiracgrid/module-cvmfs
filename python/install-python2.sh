#!/bin/sh

python_version=2.7.18

hpc_root=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6
python_root="${hpc_root}/python/${python_version}"
openssl_root="${hpc_root}/openssl/${openssl_version}"
sqlite_root="${hpc_root}/sqlite/${sqlite_version}"


curdir=$(cd $(dirname "$0");pwd)

. "${hpc_root}/module/4.2.1/init/sh"
module purge

mkdir temp
cd temp

# Download and extract
wget "https://www.python.org/ftp/python/${python_version}/Python-${python_version}.tgz"
tar -xf "Python-${python_version}.tgz"
cd "Python-${python_version}"

# Build
export LDFLAGS="-Wl,-rpath=${python_root}/lib"

./configure --prefix="${python_root}" --enable-shared --with-ensurepip --enable-unicode=ucs4
make -j
make install

cd ..

# Create modulefile
cp "${curdir}/../modulefiles/python/2.7.18" "${hpc_root}/modulefiles/python/${python_version}"

# Install virtualenv
"${python_root}/bin/pip" install --upgrade pip
"${python_root}/bin/pip" install virtualenv
"${python_root}/bin/virtualenv" --version

cd ..
rm -rf temp
