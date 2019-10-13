# Introduction

The file contains the server hardware configuration. The installation is based on [Fedora Server](https://getfedora.org/server/).

# Sleep a monitor display
The default display is always on. To change it add
```sh:
vi /etc/default/grub
```
and change or add "consoleblank" to GRUB_CMDLINE_LINUX, like
```
GRUB_CMDLINE_LINUX="consoleblank=60"
```
