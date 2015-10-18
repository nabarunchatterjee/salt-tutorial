copy_latest_file:
  local.cp.push:
    - tgt: {{ data['data']['id'] }}
    - arg:
      - {{ data['data']['path'] }}
