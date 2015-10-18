rebuild_beacon:
  local.state.sls:
    - tgt: {{ data['data']['id'] }}
    - kwarg:
        mods:
          beacon.salt_files
