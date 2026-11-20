# 07 - Linux Networking Commands

## View interfaces, addresses and routes
```bash
ip addr
ip link
ip route
```

## Test reachability
```bash
ping -c 4 example.com
```
A failed ping does not always mean a host is unavailable; firewalls may block ICMP.

## Inspect listening ports and sockets
```bash
ss -tuln
ss -tulpn
```
Some process details may require elevated privileges.

## Make HTTP requests
```bash
curl -I https://example.com
curl https://example.com
```
- `-I`: request response headers.
- Without `-I`: retrieve the response body.

## DNS lookup
```bash
dig example.com
nslookup example.com
```
These utilities may need to be installed separately.

## Connect using SSH
```bash
ssh username@server-ip
```
For a PEM private key:
```bash
chmod 400 my-key.pem
ssh -i my-key.pem ec2-user@PUBLIC_IP
```
Use the correct username for the server image. Keep private keys secret and never commit them to Git.

## Copy files using SCP
```bash
scp file.txt username@server-ip:/home/username/
scp username@server-ip:/var/log/example.log .
```

## Troubleshoot SSH timeouts
1. Verify the server is running and has the expected public IP.
2. Check that the security group and host firewall allow TCP port 22 from your current public IP.
3. Check that the subnet route table has a path to an Internet Gateway for public access.
4. Check network ACL rules and local network restrictions.
5. Test the port with `nc -vz SERVER_IP 22` or an equivalent tool.

A timeout usually means the TCP connection cannot be established. A permission-denied message occurs later, during authentication.
