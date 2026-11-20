# 01 - Basic Linux Commands

## Find your current location
```bash
pwd
```
Prints the absolute path of the current working directory.

## Identify the current user
```bash
whoami
id
```
- `whoami`: prints the effective username.
- `id`: prints user ID, primary group ID and supplementary groups.

## Display date and time
```bash
date
```

## Display system and kernel information
```bash
uname -a
uname -r
cat /etc/os-release
```
- `uname -a`: prints system and kernel details.
- `uname -r`: prints the kernel release.
- `/etc/os-release`: identifies the Linux distribution.

## Get help
```bash
man ls
ls --help
```
Use `q` to exit a manual page.

## Clear the terminal
```bash
clear
```

## Command history
```bash
history
```

## Print text
```bash
echo "Hello Linux"
printf "User: %s\\n" "$USER"
```

## Practice
1. Run `pwd` and identify your current directory.
2. Run `whoami`, `id` and `uname -r`.
3. Read `man pwd`, then exit with `q`.
4. Display your recent command history.
