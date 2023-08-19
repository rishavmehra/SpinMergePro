
# Licensed under the Apache License, Version 2.0 (the "License");
# Author: Rishav Mehra

sysUpdate() {
  ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu --private-key ./rishav.pem -i '52.4.172.250,' ec2-cfg.yml
}

againDeployNewVersion() {
  ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u ubuntu --private-key ./rishav.pem -i '52.4.172.250,' ec2-cfg-update.yml
}


if [ $# != 1 ]; then
  echo -n "
Help [1 argument required]
0 system update
1 again deploy
"
  exit 1
fi

choice=$1

if [ $choice -eq 0 ]; then
  sysUpdate
elif [ $choice -eq 1 ]; then
  againDeployNewVersion
else
  echo 'Invalid request'
  return 1
fi

