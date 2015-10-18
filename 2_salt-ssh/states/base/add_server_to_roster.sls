#salt-master:
#  host: 192.168.33.51 # The IP addr or DNS hostname
#  user: vagrant         # Remote executions will be executed as user fred
#  sudo: True         # Whether to sudo to root, not enabled by default

/etc/salt/roster:
  file.append:
    - text:
{% for id,ip in salt['pillar.get']('minion_list').iteritems() %}
      - "{{id}}:"
      - "  host: {{ip}}"
      - "  user: vagrant # User to do remote executions for {{id}}"
      - "  sudo: True  # if sudo is enabled for user in {{id}}"
{% endfor %}
