andrewrothstein.uaa
=========
![Build Status](https://github.com/andrewrothstein/ansible-uaa/actions/workflows/build.yml/badge.svg)

Installs the [uaa-cli](https://github.com/cloudfoundry-incubator/uaa-cli)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.uaa
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
