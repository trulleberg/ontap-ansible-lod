echo "--> Updating Red Hat system"
yum -y update

echo "--> Installing additional packages"
yum -y install jq

echo "--> Upgrading pip"
pip3 install --upgrade pip

echo "--> Upgrading Asnible"
pip3 install --upgrade ansible

echo "--> Installing additional Python libs"
pip3 install --upgrade netapp_lib
pip3 install "pywinrm[kerberos]>=0.3.0"

echo "--> Creating links for Python3"
ln -s /usr/local/bin/python3.8 /usr/bin/python3
ln -s /usr/local/bin/pip3.8 /usr/bin/pip3

echo "--> Installing additional ansible collections (ONTAP, UM, Windows, AWX)"
ansible-galaxy collection install netapp.ontap
ansible-galaxy collection install netapp.um_info
ansible-galaxy collection install community.windows
ansible-galaxy collection install awx.awx