# Linux Commands

A practical, example-driven collection of Linux commands and shell scripting notes for system administration, cloud and DevOps learning.

## Contents

| Section | Topics |
|---|---|
| [01 - Basic Commands](01-Basic-Commands/basic-commands.md) | `pwd`, `whoami`, `date`, `uname`, `man`, `clear` |
| [02 - File Management](02-File-Management/file-commands.md) | `touch`, `cat`, `less`, `head`, `tail`, `cp`, `mv`, `rm` |
| [03 - Directory Management](03-Directory-Management/directory-commands.md) | `ls`, `cd`, `mkdir`, `rmdir`, paths |
| [04 - Permissions](04-Permissions/permissions.md) | `chmod`, `chown`, `chgrp`, `umask` |
| [05 - User Management](05-User-Management/users.md) | `who`, `id`, `useradd`, `passwd`, `sudo`, groups |
| [06 - Process Management](06-Process-Management/processes.md) | `ps`, `top`, `pgrep`, `kill`, `nice`, `systemctl` |
| [07 - Networking](07-Networking/networking.md) | `ip`, `ping`, `ss`, `curl`, `ssh`, `scp`, `dig` |
| [08 - Package Management](08-Package-Management/packages.md) | APT and DNF package commands |
| [09 - Disk Management](09-Disk-Management/disk.md) | `df`, `du`, `lsblk`, `mount`, `findmnt` |
| [10 - Shell Scripting](10-Shell-Scripting/scripts.sh) | Variables, conditions, loops and functions |

## How to use

1. Choose a topic from the table.
2. Read the command and its example.
3. Run examples in a Linux virtual machine, WSL distribution or a test EC2 instance.
4. Read each command's manual with `man command` or use `command --help`.

## Important safety notes

- Practice destructive commands such as `rm`, disk formatting and permission changes only on test files or disposable environments.
- Review paths and options before using commands with `sudo`.
- Never paste private keys, passwords, access tokens or other secrets into this repository.
- Package-management commands differ by distribution. The notes identify APT (Ubuntu/Debian) and DNF (Fedora/RHEL-family) where relevant.

## Learning approach

This repository is intended as a growing set of notes. Add new commands with a short purpose, syntax, safe example and explanation of the output.
