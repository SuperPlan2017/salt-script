{% set file_roots = salt['pillar.get']('base:salt:file_roots') %}

at:
  pkg.installed:
    - name: at
  service.running:  
    - name: atd  
    - enable: True

salt.grains.config:
  file.managed:
    - name: /etc/salt/grains
    - source: salt://salt/files/salt/grains
    - template: jinja

salt.master.config:
  file.managed:
    - name: /etc/salt/master.d/devops.conf
    - source: salt://salt/files/salt/master.conf
    - template: jinja
    - user: root
    - group: root
    - onlyif: test -f /etc/salt/master {# This is salt master #}

salt.master.autosign_file:
  file.managed:
    - name: /etc/salt/autosign.conf
    - source: salt://salt/files/salt/autosign.conf
    - template: jinja
    - onlyif: test -f /etc/salt/master {# This is salt master #}

salt.minion.config:
  file.managed:
    - name: /etc/salt/minion.d/devops.conf
    - source: salt://salt/files/salt/minion.conf
    - user: root
    - group: root
    - template: jinja
    - onlyif: test -f /etc/salt/minion {# This is salt minion #}

salt.master.restart:
  cmd.wait:
    - name: echo systemctl restart salt-master.service  | at now + 1 minute
    - require:
      - pkg: at
    - watch:
      - file: salt.master.config

salt.minion.restart:
  cmd.wait:
    - name: echo systemctl restart salt-minion.service  | at now + 1 minute
    - require:
      - pkg: at
    - watch:
      - file: salt.minion.config
      - file: salt.grains.config
