# ansible_template

I'm following the [ansible-best-practises](http://docs.ansible.com/ansible/playbooks_best_practices.html) and I got the external (galaxy) role management from [this](https://github.com/enginyoyen/ansible-best-practises).

I included a `post-receive` hook on my development pc that goes like this:

```
#!/bin/bash
TEST_NODE_NAME="mgmt"
TEST_STATUS=$(vagrant global-status | grep $TEST_NODE_NAME)

if [[ -z ${TEST_STATUS} ]]; then
  echo "No test env"
else
  vagrant ssh $TEST_NODE_NAME -c "cd workspace/ansible_template && git pull"
fi
```
It searches for my custom environment to test and if it exists it deploys the file.

#### File hierarchy

```
.
├── env
│   ├── development.ini
│   ├── production.ini
│   └── test.ini
├── group_vars
│   ├── all
│   └── group1
├── host_vars
│   └── hostname1
├── library
│   └── filter_plugins
├── playbooks
│   ├── dbservers.yml
│   ├── site.yml
│   └── webservers.yml
├── README.md
├── roles
│   ├── common
│   │   ├── defaults
│   │   ├── files
│   │   ├── handlers
│   │   ├── library
│   │   ├── lookup_plugins
│   │   ├── meta
│   │   ├── tasks
│   │   ├── temlates
│   │   └── vars
│   ├── roles_requirements.yml
│   └── webtier
│       ├── defaults
│       ├── files
│       ├── handlers
│       ├── library
│       ├── lookup_plugins
│       ├── meta
│       ├── tasks
│       ├── temlates
│       └── vars
├── scripts
│   └── install_roles_requirements.sh
└── vpass

```
