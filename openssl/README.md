## Source

<https://www.openssl.org/>


## Installation

### openssl 1.1.1g

Download:

```
wget https://www.openssl.org/source/openssl-1.1.1g.tar.gz
tar -xf openssl-1.1.1g.tar.gz
```

Install:

```
./config --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/openssl/1.1.1g shared zlib -Wl,-rpath=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/openssl/1.1.1g/lib
make
make install
```

`RPATH` is added in the above `config` arguments so that the
`LD_LIBRARY_PATH` is no longer needed.
This will help to avoid conflicts with system openssl library file,
where `openssl` is not compatible between system (1.0.x) and new (1.1.x) versions.
If other programs using this openssl library would like to avoid similar
conflicts, they also need to add `RPATH` in their binaries.
