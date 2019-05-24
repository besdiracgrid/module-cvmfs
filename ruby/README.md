## Installation

### ruby 2.6.3

```
sudo yum install gcc-c++ patch readline-devel zlib-devel \
   libyaml-devel libffi-devel openssl-devel make \
   bzip2-devel autoconf automake libtool bison iconv-devel sqlite-devel

./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/ruby/2.6.3
make
make install
```
