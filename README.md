andrewrothstein.uaa
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-uaa.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-uaa)

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
