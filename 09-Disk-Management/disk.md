# 09 - Disk and Filesystem Commands

## View filesystem space
```bash
df -h
df -h /
```
Shows filesystem capacity and available space in human-readable units.

## View directory size
```bash
du -sh ~/linux-practice
du -h --max-depth=1 .
```
The `--max-depth` option is available in GNU `du`.

## List block devices
```bash
lsblk
lsblk -f
```
Displays block devices and filesystem information.

## Inspect mount points
```bash
findmnt
findmnt /
mount
```

## Mounting - read before executing
A mount operation attaches a filesystem to a directory. Verify the device and filesystem before using it.

```bash
sudo mount /dev/DEVICE /mnt/test
sudo umount /mnt/test
```
These are illustrative placeholders. Replace them only after verifying the correct device and filesystem. Mounting or formatting the wrong device can make data inaccessible or destroy it.

## Disk safety
Never run `mkfs`, `fdisk`, `parted` or destructive disk commands on a production or personal disk as an experiment. Use a disposable virtual disk and verify its device name first.
