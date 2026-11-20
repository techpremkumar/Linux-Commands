# 06 - Process Management and Services

## View processes
```bash
ps
ps aux
top
```
- `ps`: processes associated with the current terminal.
- `ps aux`: detailed process snapshot.
- `top`: interactive live process viewer; press `q` to quit.

## Search for processes
```bash
pgrep -a nginx
ps aux | grep nginx
```

## Stop a process
```bash
kill PID
kill -TERM PID
kill -KILL PID
```
Replace `PID` with the actual process ID. SIGTERM requests a clean shutdown. SIGKILL cannot be caught and should be a last resort.

## Process priority
```bash
nice -n 10 command
renice 5 -p PID
```
These adjust scheduling niceness. Permissions and valid ranges depend on the operating system.

## Manage services with systemd
```bash
systemctl status ssh
sudo systemctl start ssh
sudo systemctl stop ssh
sudo systemctl restart ssh
sudo systemctl enable ssh
```
Service names vary; an SSH server may be named `ssh` or `sshd`.

## View logs
```bash
journalctl -u ssh
journalctl -u ssh -f
```

## Practice
Inspect processes and stop a harmless test process with SIGTERM. Do not terminate system or remote-access processes on a server you need.
