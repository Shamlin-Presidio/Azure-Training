## D E S C R I P T I O N:

Create an Azure VM with custom data script to install nginx web server <br />
Create an Azure Bastion to SSH into the machine <br />
Only NGINX Web Service should be accessible from internet <br />
Extra After SSH into the VM, try to locate the file path of custom data script and log file of your custom data script execution <br />

## S T E P S:

- Created VM with the following script:

```bash
#!/bin/bash
sudo apt update
sudo apt upgrade -y

sudo apt install nginx -y

sudo systemctl enable nginx
sudo systemctl start nginx
```
- Used Bastion connect to SSH into the machine

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day1/Assets/web%20server.png" />

- Only http port `80` is open
- Custom data script is located in `/var/lib/waagent/` as `ovf-env.xml` in base-64 encoding

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day1/Assets/custom-script.png" />

- Custom data script log is located in `/var/log` as `cloud-init-output.log`

<img src="https://github.com/Shamlin-Presidio/Azure-Training/blob/main/Day1/Assets/File.png" />
