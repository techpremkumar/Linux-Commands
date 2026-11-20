# 04 - Linux Permissions

Linux permissions have three user classes:
- User (u): the file owner.
- Group (g): users in the file's group.
- Others (o): everyone else.

The basic permission bits are read (r = 4), write (w = 2) and execute (x = 1).

## Inspect permissions
```bash
ls -l script.sh
```
Example: `-rwxr-xr--`. The first character identifies the file type; the remaining nine characters show permissions for user, group and others.

## Symbolic permissions
```bash
chmod u+x script.sh
chmod g-w report.txt
chmod o-r secret.txt
```

## Numeric permissions
```bash
chmod 755 script.sh
chmod 644 notes.txt
```
- `755`: owner has read/write/execute; group and others have read/execute.
- `644`: owner has read/write; group and others have read.

## Change owner and group
```bash
sudo chown alice report.txt
sudo chown alice:developers report.txt
sudo chgrp developers report.txt
```
These operations generally require appropriate privileges.

## Default permission mask
```bash
umask
umask 027
```
`umask` controls which permission bits are removed from newly created files and directories. The second command changes the mask for the current shell session.

## Safety
Avoid broad permissions such as `chmod -R 777`. Do not change ownership or permissions of system directories unless you understand the impact.

## Practice
Create a test script, inspect its permissions, add execute permission for the owner and inspect the result.
