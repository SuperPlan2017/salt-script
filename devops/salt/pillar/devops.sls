base:
  salt:
    file_roots: /salt-script/devops/salt/roots
    formulas_roots: /salt-script/devops/salt/sun-java-formula
    pillar_roots: /salt-script/devops/salt/pillar
  domain_name: chkreg.com
  networks:
    cidr: 172.16.0.0/24
    ip_interface: eth0
  ci_user: idevops-ci
  gerrit_weburl: ''
  jenkins_weburl: ''