# sug - systemd unit generator

## Motivation

I am on a fresh server and want to have systemd unit. It has python installed.

## Installation

```sh
pip install sug
```

Better:

```sh
pipx install sug
```

## Usage

Sug is pretty simple, you can invoke it like this:
```
Usage: sug [OPTIONS] NAME WORKING_DIR EXEC_START BIN_PATH USER GROUP
```

## Example

This is an invocation example for sug:

```sh
sug "myservice" /var/run/myservice "$(which myservice) --verbose" $(which myservice) $USER $USER 
```