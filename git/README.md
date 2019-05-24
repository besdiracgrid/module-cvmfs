## Installation

### git 2.21.0

```
sudo yum install curl-devel expat-devel gettext-devel openssl-devel perl-devel zlib-devel
sudo yum install asciidoc

./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/git/2.21.0
make all doc
make install install-doc
```
