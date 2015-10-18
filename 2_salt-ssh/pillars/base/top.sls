base:
  'master':
    - master
    - cluster.heaven
  'minion[1-2]':
    - match: pcre
    - cluster.hell
    - node_type.bad
  'minion3':
    - cluster.heaven
    - node_type.good
  'node_type:vagrant':
    - match: grain
    - scheduler   
