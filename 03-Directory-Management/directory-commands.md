# 03 - Directory Management

## List directory contents
```bash
ls
ls -l
ls -a
ls -lah
```
- `ls`: lists visible entries.
- `ls -l`: long listing with permissions, owner, size and time.
- `ls -a`: includes hidden entries.
- `ls -lah`: long, human-readable listing including hidden entries.

## Change directory
```bash
cd /var/log
cd ..
cd ~
cd -
```
- `cd ..`: move to the parent directory.
- `cd ~`: move to your home directory.
- `cd -`: return to the previous working directory.

## Create directories
```bash
mkdir reports
mkdir -p projects/linux/notes
```
The `-p` option creates missing parent directories.

## Remove an empty directory
```bash
rmdir empty-folder
```
`rmdir` removes empty directories only.

## Absolute and relative paths
- Absolute path: starts at the filesystem root, e.g. `/home/user/docs`.
- Relative path: interpreted from the current directory, e.g. `docs/notes.txt`.

## Practice
1. Create `~/linux-practice/day-1` with `mkdir -p`.
2. Move into it and run `pwd`.
3. Run `ls -lah`.
4. Move to the parent directory with `cd ..`.
