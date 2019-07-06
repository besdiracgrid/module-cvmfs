## Source

<https://www.openssl.org/>


## Installation

### openssl 1.1.1b

Download:

```
wget https://www.openssl.org/source/openssl-1.1.1b.tar.gz
tar -xf openssl-1.1.1b.tar.gz
```

Install:

```
./config --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/openssl/1.1.1b shared zlib
make
make install
```
