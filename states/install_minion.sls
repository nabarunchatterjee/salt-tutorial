salt-minion:
  pkgrepo:
    - managed
    - ppa: saltstack/salt
    - require_in:
      - pkg: salt-minion
  pkg:
    - installed
  service:
    - running
    - enable: True
    - restart: True
    - watch:
      - file: /etc/salt/minion
      - pkg: salt-minion

/etc/salt/minion:
  file.managed:
    - source: salt://minion/minion.conf
    - user: root
    - group: root
    - mode: 644
