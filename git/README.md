## Source

<https://git-scm.com/>


## Installation

### Preparation

```
sudo yum install curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel
sudo yum install asciidoc
```

### git 2.22.0

Download:

```
wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.22.0.tar.gz
tar -xf git-2.22.0.tar.gz
```

Clean module environment:

```
module purge
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/git/2.22.0
make all doc
make install install-doc
```
