## Source

<https://pypy.org/>


## Installation

Only need to extract the portable binary.

### pypy3.6 7.3.1

Download:

```
wget https://bitbucket.org/pypy/pypy/downloads/pypy3.6-v7.3.1-linux64.tar.bz2
```

Install:

```
mkdir /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1
tar -C /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1 --strip-components 1 -xf pypy3.6-v7.3.1-linux64.tar.bz2
```

Install pip:

```
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1/bin/pypy3 -m ensurepip
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1/bin/pip3 install --upgrade pip wheel setuptools virtualenv
```

Create links for default python:

```
ln -s pypy3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1/bin/pypy
ln -s pypy3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1/bin/python3
ln -s pypy3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1/bin/python
ln -s pip3 /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy3/7.3.1/bin/pip
```

### pypy2.7 7.3.1

Download:

```
wget https://bitbucket.org/pypy/pypy/downloads/pypy2.7-v7.3.1-linux64.tar.bz2
```

Install:

```
mkdir /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.3.1
tar -C /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.3.1 --strip-components 1 -xf pypy2.7-v7.3.1-linux64.tar.bz2
```

Install pip:

```
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.3.1/bin/pypy -m ensurepip
/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.3.1/bin/pip install --upgrade pip wheel setuptools virtualenv
```

Create links for default python:

```
ln -s pypy /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.3.1/bin/python2
ln -s pypy /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/pypy/pypy/7.3.1/bin/python
```
