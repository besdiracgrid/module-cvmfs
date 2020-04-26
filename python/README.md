## Source

<https://www.python.org/>


## Installation

### Preparation

```
sudo yum install openssl-devel bzip2-devel zlib-devel sqlite-devel expat-devel gdbm-devel readline-devel libuuid-devel
```

### python 3.8.2

> The steps are so complicated that a script `install-python3.sh` is written.

Download:

```
wget https://www.python.org/ftp/python/3.8.2/Python-3.8.2.tgz
tar -xf Python-3.8.2.tgz
```

Clean module environment:

```
module purge
```

Install:

```
CPPFLAGS=-I/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sqlite/3.29.0/include LDFLAGS='-L/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sqlite/3.29.0/lib -Wl,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/openssl/1.1.1g/lib,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/lib,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sqlite/3.29.0/lib' ./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2 --enable-shared --with-ensurepip --with-openssl=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/openssl/1.1.1g
make
make install
```

The openssl and sqlite3 provided by SL6 are too old for python 3.8.
`RPATH` is set for `python`, `openssl` and `sqlite`, so that
they do not need to be loaded explicitly.

Create links for default python:

```
ln -s python3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/bin/python
ln -s pip3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/bin/pip
ln -s pydoc3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/bin/pydoc
ln -s python3-config /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/bin/python-config
```

Install virtualenv:

```
module load python/3.8.2
# Make sure using the correct python
which python
python -V

# Make sure pip is installed in the correct location
which pip
pip install --upgrade pip
pip install virtualenv
```

### python 2.7.16

Download:

```
wget https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tar.xz
tar -xf Python-2.7.16.tar.xz
```

Clean module environment:

```
module purge
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.16 --enable-unicode=ucs4
make
make install
```

Install pip and virtualenv

```
module load python/2.7.16
# Make sure using the correct python
which python
python -V

python -m ensurepip --default-pip
# Make sure pip is installed in the correct location
which pip
pip install --upgrade pip
pip install virtualenv
```
