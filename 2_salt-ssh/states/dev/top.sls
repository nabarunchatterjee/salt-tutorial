base:
  'master':
     - autosign
     - add_server_to_roster
  '*':
     - set_grains
  'minion[1-2]':
     - match: pcre
     - beacon.salt_files
  'os:Ubuntu':
     - match: grain
     - install_pip_packages

dev:
   'E@minion[1-2] or G@node_type:good':
      - match: compound
      - nginx.setup
 
  
