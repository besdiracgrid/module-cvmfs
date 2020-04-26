## Source

<https://libevent.org/>


## Installation

### libevent 2.1.10

Download:

```
wget https://github.com/libevent/libevent/releases/download/release-2.1.10-stable/libevent-2.1.10-stable.tar.gz
tar -xf libevent-2.1.10-stable.tar.gz
```

Clean module environment:

```
module purge
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/libevent/2.1.10
make
make install
```
