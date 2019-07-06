## Source

<https://cmake.org/>


## Installation

### cmake 3.13.2

Download:

```
wget https://github.com/Kitware/CMake/releases/download/v3.13.2/cmake-3.13.2.tar.gz
tar -xf cmake-3.13.2.tar.gz
```

Install:

```
module load gcc/4.9.4

./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/cmake/3.13.2
make
make install
```
