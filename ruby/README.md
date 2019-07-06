## Source

<https://www.ruby-lang.org/>


## Installation

### ruby 2.6.3

Download:

```
wget https://cache.ruby-lang.org/pub/ruby/2.6/ruby-2.6.3.tar.gz
tar -xf ruby-2.6.3.tar.gz
```

Install:

```
sudo yum install gcc-c++ patch readline-devel zlib-devel \
   libyaml-devel libffi-devel openssl-devel make \
   bzip2-devel autoconf automake libtool bison iconv-devel sqlite-devel

./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/ruby/2.6.3
make
make install
```
