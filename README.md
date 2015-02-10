# Introduction

ec2-ssh is a ssh_config manager for Amazon EC2.

ec2ssh command adds Host descriptions to ssh_config (~/.ssh/config default). 'Name' tag of instances are used as Host descriptions.



# How to use


## Setup

### 1. Clone the current repo

```
$ git clone https://github.com/totango/ec2-ssh.git
```

### 2. Go to your  .bashrc/.zshrc/.bash_profile and set the export the next Variables:
```
export AWS_ACCESS_KEY_ID={Replace with your Amazon Access Key}
export AWS_SECRET_ACCESS_KEY={Replace with your amazon Secret Kek}
```
### 3. Then source your profile file.
```
$ source  .bashrc/.zshrc/.bash_profile
```


### 4. Go to the repo you have cloned and run setup.py

```
$ python setup.py install
```













#Notice
ec2ssh command updates your .ssh/config file default. You should make a backup of it.