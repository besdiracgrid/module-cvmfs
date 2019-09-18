## Source

<https://root.cern.ch/>


## Installation

### Preparation

```
sudo yum install java-1.8.0-openjdk-devel sqlite-devel boost-devel libxml2-devel fftw-devel \
    libX11-devel libXpm-devel libXt-devel libXft-devel libXext-devel libXmu-devel \
    xorg-x11-xauth mesa-libGL-devel mesa-libGLU-devel freeglut-devel \
    gsl-devel qt-devel openssl-devel zlib-devel bzip2-devel ncurses-devel readline-devel \
    tk-devel xz-devel gdbm-devel db4-devel libtiff-devel giflib-devel
```

### root 6.18.04

Download:

```
wget https://root.cern/download/root_v6.18.04.source.tar.gz
tar -xf root_v6.18.04.source.tar.gz
```

Install:

```
module load gcc/4.9.4 python/2.7.15 cmake/3.15.3

mkdir build
cd build

cmake ../root-6.18.04 -DCMAKE_INSTALL_PREFIX=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/root/6.18.04 \
    -Dbuiltin_afterimage=ON -Dbuiltin_ftgl=ON -Dbuiltin_freetype=ON -Dbuiltin_glew=ON -Dbuiltin_pcre=ON -Dbuiltin_zlib=ON -Dbuiltin_tbb=ON -Dbuiltin_lzma=ON \
    -Dexplicitlink=ON -Dsoversion=ON -Droofit=ON -Dminuit2=ON -Dgdml=ON -Dunuran=ON -Dgsl_shared=ON -Dpython=ON -Dsqlite=OFF
make
make install
```

### root 6.14.06

Download:

```
wget https://root.cern/download/root_v6.14.06.source.tar.gz
tar -xf root_v6.14.06.source.tar.gz
```

Install:

```
module load gcc/4.9.4 python/2.7.15 cmake/3.13.2

mkdir build
cd build

cmake ../root-6.14.06 -DCMAKE_INSTALL_PREFIX=/cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/root/6.14.06 \
    -Dbuiltin_afterimage=ON -Dbuiltin_ftgl=ON -Dbuiltin_freetype=ON -Dbuiltin_glew=ON -Dbuiltin_pcre=ON -Dbuiltin_zlib=ON -Dbuiltin_tbb=ON -Dbuiltin_lzma=ON \
    -Dexplicitlink=ON -Dsoversion=ON -Droofit=ON -Dminuit2=ON -Dgdml=ON -Dtable=ON -Dunuran=ON -Dgsl_shared=ON -Dqt=ON -Dpython=ON
make
make install
```
