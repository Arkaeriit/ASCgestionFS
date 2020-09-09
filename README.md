#ASCgestionFS

This library lets you control a POSIX file system from a Lua script thanks to a few useful functions.

## Content

### Functions
```lua
ls(path)
```
Return an array containing all the names of the files in `path`.

```lua
createDir(path)
```
Create a directory with the correct path.

```lua
isDir(path)
```
Tell if the file at the designed path is a directory.

```lua
rm(path)
```
Delete the file at the designed path

```lua
chmod(path, permissions)
```
Give the given permission to the designed file. permission is an integer. Its octal value is what you would put after a chmod if you wanted to use a command.

```lua
getPerm(path)
```
Get the permissions of the designed file. The permissions are an integer.

```lua
fileSize(path)
```
Return the size of the designed file in bytes.

## User manual

### Instalation

To install the library, simply do `make && sudo make install` from the root of the repository.

### Use

This library is meant to be required, like any other Lua libraries. To do so, start your program with `local gFS = require("gestionFS")`. All the functions are inside the table gFS. For example, to get the size of a file, do `gFS.fileSize("/path/to/file")`. For a more detailed example, check out the example folder.

When using embedded Lua, don't forget to link the library to your binary with `-lgestionFS`.

## Further examples

To see this library in actual use, you can check out the programs I made with it. 
* https://github.com/Arkaeriit/snek
* https://github.com/Arkaeriit/ASCcrypte
* https://github.com/Arkaeriit/ASCluaUtils

