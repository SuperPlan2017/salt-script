devops:
  role-map:
    'ldap':
      - 'ldap-server'
      - 'php-ldap-admin'
    'db':
      - 'postgresql'
  nodes:
    cr001.chkreg.com:
      roles:
        - java
        - firstbox
        - ssh-key
        - ssl-key
        - db
    cr002.chkreg.com:
      roles:
        - java
        - ssh-key
        - ssl-key
    cr003.chkreg.com:
      roles:
        - java
        - ssh-key
        - ssl-key