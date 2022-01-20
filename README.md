# simple_text_generator

## Description
simple_text_generator is a script that generates text from the contents of command line arguments.
(tgen)
simple_text_generator is installed as a `tgen` command.

## Install

```
make
    install      install tgen on PREFIX directory.
    uninstall    uninstall tgen from PREFIX directory.
```

## Usage

```
Usage: ${CMDNAME} [OPTION]...
[OPTION]
    --help                           Display help
    --template=<template_file_path>  Use the given <template_file_path> when generate file.
    --dist=<dist_file_path>          Use the given <dist_file_path> when generate file.
    --KEY=VALUE                      KEY is template file string surrounded by delimiter({{ }}).
                                     VALUE is the string after conversion by this script.
```

## Example

* /your/template/file/path/template.txt
```
This is template file.

{{greeting}} {{target}}.
```

* command
```bash
$ tgen \
      --template=/your/template/file/path/template.txt \
      --dist=/you/want/to/output/file/path/result.txt  \
      --greeting="Hello"                               \
      --target="world"
```

* /you/want/to/output/file/path/result.txt
```
This is template file.

Hello world.
```
