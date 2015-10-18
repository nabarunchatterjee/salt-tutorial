{% for package in ['python-pip', 'python-dev'] %}  
{{ package }}:
   pkg.installed
{% endfor %}
   
{% for package,version in {'pyinotify':'0.9.6', 'psutil':'0.5.0'}.iteritems() %}
{{ package }}:
  pip.installed:
    - name: {{package}}=={{version}}
    - require:
       - pkg: python-pip
{% endfor %}

