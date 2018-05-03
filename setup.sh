#!/usr/bin/env bash

pip install --user ansible || exit 1

for g in `grep '^\s\+- role:' site.yml | awk '{print $3}'`; do
  for (( i = 0; i < 5; i++ )); do
    ansible-galaxy install $g && break
  done
done

pyexec=`which python`
if [ -z "$pyexec" ]; then
    pyexec=`which python3`
fi

cp hosts.sample hosts
cat >> hosts << __EOF__
[master:vars]
ansible_python_interpreter=$pyexec
__EOF__

ansible-playbook -i hosts site.yml
