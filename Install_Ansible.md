**Installing Ansible on centos7**

1. Ensure your system is up to date by running the following command
```
sudo yum update
```

2. Install the EPEL (Extra Packages for Enterprise Linux) repository, which contains Ansible
```
sudo yum install epel-release
```

3. Install Ansible by running the following command
```
sudo yum install ansible
```

4. After the installation is complete, you can verify the Ansible version by running
```
ansible --version
```
