# mc-server-millenaire-1.12.2
## Installation
- Download to the server: ```wget https://github.com/mashkovtsevlx/mc-server-installer-millenaire-1.12.2/archive/refs/tags/server-1.0.3.zip```
- Extract: ```unzip server-1.0.2.zip```
- Rename: ```mv mc-server-installer-millenaire-1.12.2-server-1.0.3 server```
- ```chmod +x install.sh```
- ```./install.sh```

## Running
- ```./start.sh```

## Running on EC2
I use EC2 m6gd.xlarge
- Open Actions -> Instance settings -> Edit user data
- Add lines below:
```
#!/bin/bash
cd /home/ec2-user/server && ./start.sh
```