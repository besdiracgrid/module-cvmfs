## Source

<https://www.boost.org/>


## Installation

### boost 1.71.0

Download:

```
wget https://dl.bintray.com/boostorg/release/1.71.0/source/boost_1_71_0.tar.gz
tar -xf boost_1_71_0.tar.gz
```

Clean and set module environment:

```
module purge
module load gcc/4.9.4 python/2.7.15
```

Install:

```
./bootstrap.sh --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/boost/1.71.0
./b2 install
```
