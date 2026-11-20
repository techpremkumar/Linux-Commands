# 02 - File Management

Use a test directory so practice commands do not affect important files.

```bash
mkdir -p ~/linux-practice
cd ~/linux-practice
```

## Create files
```bash
touch notes.txt
```
Creates an empty file if it does not exist, or updates its timestamps if it does.

## Write and display content
```bash
echo "Linux practice" > notes.txt
cat notes.txt
```
- `>` redirects output and overwrites the destination.
- `>>` appends output.

```bash
echo "Second line" >> notes.txt
cat notes.txt
```

## Read file content
```bash
less notes.txt
head -n 5 notes.txt
tail -n 5 notes.txt
tail -f application.log
```
Press `q` to exit `less`. The `tail -f` command follows new log lines.

## Copy and move
```bash
cp notes.txt notes-backup.txt
mv notes-backup.txt archive.txt
```

## Find files
```bash
find . -type f -name "*.txt"
```

## Remove a file - use caution
```bash
rm archive.txt
```
Check the path with `pwd` and `ls` before deleting. Avoid practicing with broad wildcards or `rm -rf` on important directories.

## Practice
Create a file, write two lines, append a third line, display it, copy it, rename the copy and locate all `.txt` files.
