sync_grains:
  local.saltutil.sync_all:
    - tgt: {{ data['id'] }}
