# Introduction

ec2-ssh is a ssh_config manager for Amazon EC2.

ec2-ssh command adds Host descriptions to ssh_config (~/.ssh/config default). 'Name' tag of instances are used as Host descriptions and the Private-Dns are used for ssh.

# Setup

### 1. Clone the current repo to your local machine

```
$ git clone https://github.com/totango/ec2-ssh.git
```

### 2. Go to your  .bashrc/.zshrc/.bash_profile and set the export to the next variables:
```
export AWS_ACCESS_KEY_ID={Replace with your Amazon Access Key}
export AWS_SECRET_ACCESS_KEY={Replace with your amazon Secret Kek}
```
(!) In case you don't have an Access_Key,Secret_Key for your user ask from your Aws Admin  to provide you one.
### 3. Then source your profile file.
```
$ source  .bashrc/.zshrc/.bash_profile
```


### 4. Go to the repo you have cloned and run setup.py

```
$ python setup.py install
```
### 5. Run the script of update_hosts.sh

```
sh update_hosts.sh
```
Now try ssh to one of the hosts by name:
```
$ ssh Name-Of-Host
```

#Notice
ec2-ssh command updates your .ssh/config file default. You should make a backup of it.
