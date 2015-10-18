cluster:
  grains.present:
    - value: {{ salt['pillar.get']('cluster') }}

node_type:
  grains.present:
    - value: {{ salt['pillar.get']('node_type') }}
