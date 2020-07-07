# Deploy ssh public key to server

## Turn on PubkeyAuthentication on remote server
You must set PubkeyAuthentication to 'yes' by a sshd service config file (/etc/ssh/sshd_config). Next restart the sshd service.
```
ssh -p $SSH_PORT $SSH_USERNAME@$SSH_HOST 'sed -i "s/#PubkeyAuthentication yes/PubkeyAuthentication yes/" /etc/ssh/sshd_config && systemctl restart sshd'
```

## Add SSH public key by "hand"
Login to remote host and create authorized_keys (permissions are important)
```
chmod 0700 ~/.ssh
chmod 0600 ~/.ssh/authorized_keys
```
Next edit via vi/nano and copy your public key to ~/.ssh/authorized_keys.
Or use below code from your local machine:
```
cat ~/.ssh/id_rsa.pub | ssh -p 2223 root@pozoga.eu 'mkdir ~/.ssh && chmod 0700 ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 0600 ~/.ssh/authorized_keys'
```

## Add SSH public key by ssh-copy-id
```
ssh-copy-id -p $SSH_PORT $SSH_USERNAME@$SSH_HOST
```

## How to allow root login via ssh 
```
# go to root terminal
sudo su
# set root password
passwd
#update ssh config
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
service ssh restart
# done ;-)
```