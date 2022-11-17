# installar desde /
# apt-get install -y nodejs
# apt-get -y install npm

curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash
apt-get install -y nodejs
npm install -g npm@9.1.1
apt-get update

echo '******************************'
echo 'sudo apt-get install -y gnome-keyring'
echo '******************************'
apt-get install -y gnome-keyring
echo '******************************'
echo 'sudo apt-get -y install libsecret-1-0'
echo '******************************'
apt-get install -y libsecret-1-0
echo '******************************'
echo 'sudo apt autoremove'
echo '******************************'
apt -y autoremove
echo '******************************'
echo 'export $(dbus-launch)'
echo '******************************'
apt install dbus-x11
echo '******************************'
echo '# Pulsar Control-D'
echo '******************************'
echo '******************************'
echo 'sudo gnome-keyring-daemon --unlock --components=secrets'
echo '******************************'
gnome-keyring-daemon --unlock --components=secrets  
echo '******************************'
echo 'sudo apt-get install -y libpam-gnome-keyring'
echo '******************************'
apt-get install -y libpam-gnome-keyring
echo '******************************'
echo 'sudo apt-get update'
echo '******************************'
apt-get update
echo '******************************'
echo 'sudo dpkg -i ooRexx-5.0.0-12528.ubuntu1604.x86_64.deb'
echo '******************************'
dpkg -i ooRexx-5.0.0-12528.ubuntu1604.x86_64.deb

echo '******************************'
echo 'npm install -g node-gyp'
echo '******************************'
npm install -g node-gyp
echo '******************************'
echo 'apt-get install python3 make g++'
echo '******************************'
apt-get install -y python3 make g++

mkdir /root/projects/
mv /etc/pam.d/sshd /etc/pam.d/sshd.bak
cp sshd /etc/pam.d/sshd
mv /root/.bashrc /root/.basrc.bak
cp .bashrc /root/.bashrc

npm install -g @zowe/cli@zowe-v2-lts
zowe plugins install @zowe/cics-for-zowe-cli@zowe-v2-lts @zowe/db2-for-zowe-cli@zowe-v2-lts @zowe/ims-for-zowe-cli@zowe-v2-lts @zowe/mq-for-zowe-cli@zowe-v2-lts @zowe/zos-ftp-for-zowe-cli@zowe-v2-lts
zowe plugins install @zowe/secure-credential-store-for-zowe-cli

zowe plugins install @broadcom/ca7-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/endevor-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/endevor-bridge-for-git-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/file-master-plus-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/mat-analyze-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/mat-detect-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/ops-for-zowe-cli@zowe-v2-lts
#zowe plugins install @broadcom/om-spool-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/sysview-for-zowe-cli@zowe-v2-lts
zowe plugins install @broadcom/caview-for-zowe-cli@zowe-v2-lts

zowe plugins install microfocus-zmf-cli-plugin-2.0.2.tgz

code --install-extension broadcomMFD.code4z-extension-pack
code --install-extension broadcomMFD.lsp-for-rexx
code --install-extension broadcomMFD.data-editor-for-mainframe
code --install-extension broadcomMFD.bridge-for-git-explorer

cp ./zowe_configs/sr01/zowe.config.json /root/.zowe/
cp ./zowe_configs/sr01/zowe.schema.json /root/.zowe/
echo 'default LPAR = SR01 Enter user/pwd (cust002)'
zowe config secure --gc
reboot