## Source

<https://www.vim.org/>

## Installation

### vim 8.1.1640

Download:

```
git clone https://github.com/vim/vim.git
```

Clean module environment:

```
module purge
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/vim/8.1.1640 --disable-fontset --disable-gui --without-x --without-gnome
make
make install
```
