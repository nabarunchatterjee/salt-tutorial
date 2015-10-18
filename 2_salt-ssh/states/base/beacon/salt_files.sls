/etc/salt/minion.d/beacon.conf:
  file.managed:
    - source: salt://beacon/files/salt_files.conf.j2
    - template: jinja

salt-minion_restart:
  module.run:
    - name: service.restart
    - m_name: salt-minion
    - order: 1
