## Source

<https://github.com/tmux/tmux/wiki>


## Installation

### Preparation

```
sudo yum install ncurses-devel
```

### tmux 2.9

Download:

```
wget https://github.com/tmux/tmux/releases/download/2.9/tmux-2.9.tar.gz
tar -xf tmux-2.9.tar.gz
```

Clean and set module environment:

```
module purge
module load libevent
```

Install:

```
./configure --prefix=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/tmux/2.9
make
make install
```
