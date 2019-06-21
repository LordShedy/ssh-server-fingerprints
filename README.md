# SSH server fingerprints
When connecting to a SSH server for the first time you are greeted with warning and the RSA fingerprint of the server, it looks something like this:

```bash
The authenticity of host 'github.com (140.82.118.3)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no)?
```

To confirm that our SSH connection was not tempered with, we **should** check the servers fingerprint and compare it with the one we are trying to connect to. 

This simple script is built using *ssh-keygen* and *ssh-keyscan* binaries.
