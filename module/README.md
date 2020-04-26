## Source

Environment Modules

<http://modules.sourceforge.net/>

<https://modules.readthedocs.io/>


## Installation

### Preparation

```
sudo yum install tcl-devel
```

### module 4.2.1

Download:

```
wget https://github.com/cea-hpc/modules/releases/download/v4.2.1/modules-4.2.1.tar.gz
tar -xf modules-4.2.1.tar.gz
```

Clean module environment:

```
module purge
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/module/4.2.1 --modulefilesdir=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/modulefiles
make
make install
```
