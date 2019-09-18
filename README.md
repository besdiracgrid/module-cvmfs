## Module files and install instructions

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

For more about `Environment Modules`, please see the
[documentation](https://modules.readthedocs.io/).
