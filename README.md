# Module Files and Install Instructions

<https://github.com/besdiracgrid/module-cvmfs>

Some common packages are installed on IHEP cvmfs under the path
`/cvmfs/dcomputing.ihep.ac.cn/hpc/sw`. The environment of these packages
could be managed by [Environment Modules](http://modules.sourceforge.net/).

This project include the module files for these packages and also the
installation instructions.

## Usage by modules

Initialize `Environment Modules`. Change the shell type accordingly
if not using bash:

```shell
unset MODULEPATH
source /cvmfs/dcomputing.ihep.ac.cn/hpc/sw/x86_64-sl6/modulesetup/bash
```

Change `x86_64-sl6` to `x86_64-sl7` for SL7 OS.

Then find which packages are available for use:

```shell
module avail
```

Load the specified package and version. For example:

```shell
module load root/6.18.04

echo $ROOTSYS
root -b -q
```

Unload the environment:

```shell
module unload root
```

For more information about Environment Modules, please check the
[documentation](https://modules.readthedocs.io/).
