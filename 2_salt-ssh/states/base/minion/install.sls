salt-minion:
  pkgrepo:
    - managed
    - ppa: saltstack/salt
    - require_in:
      - pkg: salt-minion
  pkg.installed:
    - version: 2015.5.3+ds-1trusty1

/etc/salt/minion:
  file.managed:
    - template: jinja
    - source: salt://minion/files/minion.conf.j2
    - user: root
    - group: root
    - mode: 644

salt-minion_watch:
  service:
    - name: salt-minion
    - running
    - enable: True
    - restart: True
    - watch:
      - file: /etc/salt/minion
      - pkg: salt-minion

