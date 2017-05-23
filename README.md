# ansible_template

I'm following the [ansible-best-practises](http://docs.ansible.com/ansible/playbooks_best_practices.html) but also I've got some thinks I've liked about [this](https://github.com/enginyoyen/ansible-best-practises)

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
