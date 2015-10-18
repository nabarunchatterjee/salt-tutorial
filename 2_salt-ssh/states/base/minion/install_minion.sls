salt-minion:
  pkgrepo:
    - managed
    - ppa: saltstack/salt
    - require_in:
      - pkg: salt-minion
  pkg.installed:
    - version: 2015.5.3+ds-1trusty1
  service:
    - running
    - enable: True
    - restart: True
    - watch:
      - file: /etc/salt/minion
      - pkg: salt-minion

/etc/salt/minion:
  file.managed:
    - source: salt://minion/files/minion.conf
    - user: root
    - group: root
    - mode: 644
