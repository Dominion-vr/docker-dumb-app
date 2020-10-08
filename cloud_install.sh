eval `ssh-agent`
mkdir -p /root/.ssh
ssh-keyscan github.com >> ~/.ssh/known_hosts
tar -zxvf /workspace/philippe-key.tar.gz
mv /workspace/philippe-formation.pem  ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
ssh-add /workspace/.ssh/id_rsa
ssh ec2-user@ec2-15-188-14-115.eu-west-3.compute.amazonaws.com 'bash -s' < ./docker_cloud_update.sh
