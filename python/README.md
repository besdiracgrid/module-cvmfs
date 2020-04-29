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
CPPFLAGS=-I/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sqlite/3.29.0/include \
    LDFLAGS='-L/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sqlite/3.29.0/lib -Wl,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/lib,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/openssl/1.1.1g/lib,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sqlite/3.29.0/lib' \
    ./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2 \
    --enable-shared --with-ensurepip \
    --with-openssl=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/openssl/1.1.1g
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
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/bin/pip install --upgrade pip
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/bin/pip install virtualenv
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.8.2/bin/virtualenv --version
```

### python 2.7.18

Download:

```
wget https://www.python.org/ftp/python/2.7.18/Python-2.7.18.tar.xz
tar -xf Python-2.7.18.tar.xz
```

Clean module environment:

```
module purge
```

Install:

```
LDFLAGS='-Wl,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.18/lib' ./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.18 --enable-unicode=ucs4 --enable-shared
make
make install
```

Install pip and virtualenv

```
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.18/bin/python -m ensurepip --default-pip
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.18/bin/pip install --upgrade pip

/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.18/bin/pip install virtualenv
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.18/bin/virtualenv --version
```
