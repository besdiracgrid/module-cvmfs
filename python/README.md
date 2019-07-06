## Source

<https://www.python.org/>


## Installation

### Preparation

```
sudo yum install openssl-devel bzip2-devel zlib-devel sqlite-devel expat-devel gdbm-devel readline-devel libuuid-devel
```

### python 3.7.3

Download:

```
wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz
tar -xf Python-3.7.3.tgz
```

Install:

```
module load openssl/1.1.1b
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.7.3 --with-ensurepip
make
make install
```

Create links for default python:

```
ln -s python3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.7.3/bin/python
ln -s pip3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.7.3/bin/pip
ln -s pydoc3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.7.3/bin/pydoc
ln -s python3-config /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.7.3/bin/python-config
```

Install virtualenv:

```
module load python/3.7.3
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
