## Source

<https://www.sqlite.org/>


## Installation

### sqlite 3.29.0

Download:

```
wget https://www.sqlite.org/2019/sqlite-autoconf-3290000.tar.gz
tar -xf sqlite-autoconf-3290000.tar.gz
```

Clean module environment:

```
module purge
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sqlite/3.29.0
make
make install
```
