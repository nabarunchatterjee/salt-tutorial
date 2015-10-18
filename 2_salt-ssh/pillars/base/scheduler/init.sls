schedule:
  get_files:
    function: my_module.get_salt_files
    minutes: 1
    maxrunning: 1
    returner: http
