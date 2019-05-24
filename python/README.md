## Installation

### Preparation

```
sudo yum install openssl-devel bzip2-devel zlib-devel sqlite-devel expat-devel gdbm-devel readline-devel libuuid-devel
```

### python 3.7.3

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/3.7.3 --enable-shared --with-ensurepip
make
make install
```

Install virtualenv

```
module load python/3.7.3
# Make sure using the correct python
which python3

# Make sure pip is installed in the correct location
which pip3
pip3 install --upgrade pip
pip3 install virtualenv
```

### python 2.7.15

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/python/2.7.15 --enable-shared --enable-unicode=ucs4
make
make install
```

Install pip and virtualenv

```
module load python/2.7.15
# Make sure using the correct python
which python

python -m ensurepip --default-pip
# Make sure pip is installed in the correct location
which pip
pip install --upgrade pip
pip install virtualenv
```
