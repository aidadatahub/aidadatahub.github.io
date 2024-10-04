---
title: DGX-2 Service
description: Connection instructions
---
## Establish a VPN tunnel, then SFTP to storage

### VPN

**Type:** SSL-VPN.

**Gateway:** vpn.cmiv.liu.se

**Username:** eg a1234-abcxy

**Password:** Long, complex. Initially sent to you by AIDA in an encrypted zipfile (zipfile pw sent via sms).

**2f tokens:** Install FortiToken Mobile on your phone, then Enter manually > FortiNet account, and enter the FortiToken Mobile activation code you got on SMS. If you get the error message FortiCare: provision code not exist then please contact [aida-compute](mailto:aida-compute@nbis.se) and ask for a token reset. Press the eye icon to see tokens.

**Connecting from Windows & Mac:**

Use [FortiClient](https://www.fortinet.com/products/endpoint-security/forticlient). If your connection attempts consistently fail with non-obvious error messages: try completely uninstalling FortiClient, and try again with a clean install of the newest version from official sources.

**Connecting from Linux:**

Use the FortiSSL network manager plugin.
sudo apt-get install network-manager-fortisslvpn-gnome
Click: Settings > Network > VPN > + > Fortinet SSLVPN.
Under Advanced... > One time password (if applicable).
Under IPv4 (optional): Check "Use this connection only for resources on its network"
Then you can connect by clicking your network indicator applet.

**You can also connect from command line:**

`sudo apt install openfortivpn`

`sudo openfortivpn vpn.cmiv.liu.se --username=USERNAME`


### SFTP
Connect VPN. Your /proj is then available at eg sftp a1234-abcxy@130.236.251.2 (use your SSH pubkey to authenticate).

