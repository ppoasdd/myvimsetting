# myvimsetting

These repository is backup repo for installing my customized vim setting.

Some plugin folder is not uploaded with push command.

I think the reason is that the github doesn't support for large-size file, so we should install plugin like autocompleteme, taglist and so on using vundle.

## Install from scratch.

### 1. install ansible 

1.0 install python-pip on jupyterhub

    sudo apt-get install python-pip

1.1 execute bash script 'installansible'

    cd path/to/ansible/folder/
    ./installansible

In the middle of installation, press [ENTER] to complete the progress.

### 2. Modify some path.

To install with ansible, we should modify vim.yml file.

    cd path/to/ansible/folder/


change the following line.

---
vim.yml file
---

    - name: fetch vim conf files. 
      synchronize: mode=push src=~/path/to/deploy/ dest=~/

### 3. execute vim.yml playbook

In the terminal, type the following command.

    cd /path/to/absible/folder/
    ansible-playbook -i localhost, --connection=local vim.yml




### Reference.

[About installing AutoComplete](http://neverapple88.tistory.com/26) : This post explains well the entire process to install AutoComplete using Korean.

[About the limited repository size](http://stackoverflow.com/questions/3230721/max-file-size-and-max-repository-size-in-git) : This stackoverflow question says about the maximum size of github repository
