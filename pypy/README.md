## Source

<https://pypy.org/>

[Portable PyPy](https://github.com/squeaky-pl/portable-pypy)


## Installation

Only need to extract the portable binary.

### pypy3.6 7.2.0

Download:

```
wget https://github.com/squeaky-pl/portable-pypy/releases/download/pypy3.6-7.2.0/pypy3.6-7.2.0-linux_x86_64-portable.tar.bz2
```

Install:

```
mkdir /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.2.0
tar -C /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.2.0 --strip-components 1 -xf pypy3.6-7.2.0-linux_x86_64-portable.tar.bz2
```

Create links for default python:

```
ln -s pypy3.6 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.2.0/bin/python
ln -s virtualenv-pypy /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.2.0/bin/virtualenv
```

Install pip:

```
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.2.0/bin/pypy3 -m ensurepip
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.2.0/bin/pip3 install --upgrade pip wheel setuptools
```

### pypy2.7 7.2.0

Download:

```
wget https://github.com/squeaky-pl/portable-pypy/releases/download/pypy-7.2.0/pypy-7.2.0-linux_x86_64-portable.tar.bz2
```

Install:

```
mkdir /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.2.0
tar -C /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.2.0 --strip-components 1 -xf pypy-7.2.0-linux_x86_64-portable.tar.bz2
```

Create links for default python:

```
ln -s pypy /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.2.0/bin/python
ln -s virtualenv-pypy /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.2.0/bin/virtualenv
```

Install pip:

```
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.2.0/bin/pypy -m ensurepip
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.2.0/bin/pip install --upgrade pip wheel setuptools
```
