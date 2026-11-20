# 05 - User and Group Management

Some commands require root privileges. Use a disposable Linux VM for account-management practice.

## Identify users
```bash
whoami
id
who
groups
```

## Switch user
```bash
su - username
```
Starts a login shell as the specified user when authentication and policy permit it. Use `exit` to return.

## Create and manage users
Ubuntu/Debian commonly provide:
```bash
sudo adduser learner
sudo passwd learner
sudo usermod -aG sudo learner
```

On many distributions, `useradd` is also available:
```bash
sudo useradd -m learner
sudo passwd learner
```
The `-aG` option appends supplementary groups. Omitting `-a` with `-G` can replace the supplementary group list.

## Manage groups
```bash
getent group sudo
sudo groupadd developers
sudo usermod -aG developers learner
```
The administrative group may be named `sudo` on Ubuntu/Debian or `wheel` on some other distributions.

## Remove a test user
```bash
sudo deluser learner
```
Deletion commands differ by distribution. Read the relevant manual before removing a user or their home directory.

## Safety
Do not modify the default cloud instance account or remove administrative users on a server you rely on. Keep a separate administrative access path when testing user changes.
