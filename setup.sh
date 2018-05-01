#!/usr/bin/env bash

pip install --user ansible

for g in Comcast.sdkman fubarhouse.nodejs; do
  for (( i = 0; i < 5; i++ )); do
    ansible-galaxy install $g && break
  done
done

pyexec=`which python3`
if [ -z "$pyexec" ]; then
    pyexec=`which python`
fi

cp hosts.sample hosts
cat >> hosts << __EOF__
[master:vars]
ansible_python_interpreter=$pyexec
__EOF__

ansible-playbook -i hosts site.yml
