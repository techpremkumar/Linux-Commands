# 08 - Package Management

Package commands depend on the Linux distribution.

## Identify your distribution
```bash
cat /etc/os-release
```

## APT - Ubuntu and Debian
```bash
sudo apt update
sudo apt upgrade
sudo apt install nginx
sudo apt remove nginx
sudo apt search nginx
apt show nginx
```
- `apt update`: refresh package metadata.
- `apt upgrade`: upgrade installed packages.
- `apt install`: install a package.
- `apt remove`: remove a package, usually keeping its configuration.
- `apt search`: search package metadata.
- `apt show`: display package information.

## DNF - Fedora and supported RHEL-family systems
```bash
sudo dnf check-update
sudo dnf upgrade
sudo dnf install nginx
sudo dnf remove nginx
dnf search nginx
dnf info nginx
```

## Practice
Identify your Linux distribution, search for a package, inspect its metadata and install it only if you need it.
