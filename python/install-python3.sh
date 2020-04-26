#!/bin/sh

python_version=3.8.2
openssl_version=1.1.1g
sqlite_version=3.29.0

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
export CPPFLAGS="-I${sqlite_root}/include"
export LDFLAGS="-L${sqlite_root}/lib -Wl,-rpath=${python_root}/lib,-rpath=/${openssl_root}/lib,-rpath=${sqlite_root}/lib"

./configure --prefix=${python_root} --enable-shared --with-ensurepip --with-openssl=${openssl_root}
make -j
make install

cd ..

# Create links
ln -s python3 ${python_root}/bin/python
ln -s pip3 ${python_root}/bin/pip
ln -s pydoc3 ${python_root}/bin/pydoc
ln -s python3-config ${python_root}/bin/python-config

# Create modulefile
cp ${curdir}/../modulefiles/python/3.8.0 ${hpc_root}/modulefiles/python/${python_version}

# Install virtualenv
module load python/${python_version}
which python
python -V

which pip
pip install --upgrade pip
pip install virtualenv
which virtualenv

cd ..
rm -rf temp
