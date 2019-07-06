## Source

<https://gcc.gnu.org/>


## Installation

### gcc 4.9.4

Download:

```
wget http://ftp.gnu.org/gnu/gcc/gcc-4.9.4/gcc-4.9.4.tar.gz
tar -xf gcc-4.9.4.tar.gz
```

Install:

```
contrib/download_prerequisites
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/gcc/4.9.4 --enable-languages=c,c++,fortran --disable-multilib
make
make install-strip
```
