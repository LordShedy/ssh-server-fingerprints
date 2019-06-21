# SSH server fingerprints
When connecting to a SSH server for the first time you are greeted with warning and the RSA fingerprint of the server, it looks something like this:

```bash
The authenticity of host 'github.com (140.82.118.3)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no)?
```

To confirm that our SSH connection was not tempered with, we **should** check the servers fingerprint and compare it with the one we are trying to connect to. 

This simple script is built using *ssh-keygen* and *ssh-keyscan*.

## Installation guide
If you know your way around GNU/Linux, you can just download the script and go. But if you do not know or are just lazy or something, you can run the installation script
#### Steps
1. download the installation script

    `wget https://raw.githubusercontent.com/LordShedy/ssh-server-fingerprints/master/install.sh`
2. make it executable if it is not

     `chmod +x install.sh`
3. run it (you may specify the path of the program, or dont, it will install into /usr/bin by default)

     `sudo ./install.sh`
  
     or if specifying different path 
  
     `sudo ./install.sh /bin/local/orsomeotherdirectory`

That's all. Now you may use the program every time when connecting to the unknown SSH server for the first time. 
