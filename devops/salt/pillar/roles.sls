devops:
  role-map:
    'ldap':
      - 'ldap-server'
      - 'php-ldap-admin'
    'git':
      - 'postgresql'
      - 'gitlab'
      - 'redis'
      - 'gerrit'
  nodes:
    bc002.chinadaas.com:
      roles:
        - git
    bc003.chinadaas.com:
      roles:
        - ldap