## Source

<https://sourceforge.net/projects/sshpass/>


## Installation

### sshpass 1.06

Download:

```
wget https://downloads.sourceforge.net/project/sshpass/sshpass/1.06/sshpass-1.06.tar.gz
tar -xf sshpass-1.06.tar.gz
```

Clean module environment:

```
module purge
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/sshpass/1.06
make
make install
```
