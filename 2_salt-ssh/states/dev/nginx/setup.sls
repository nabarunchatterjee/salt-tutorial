nginx:
  pkg.installed

/etc/nginx/sites-available/mysite:
  file:
    - managed
    - source: salt://nginx/nginx.conf
    - symlink:
    - target: /etc/nginx/sites-enabled/mysite


nginx_service:
  service:
    - name: nginx
    - running
    - reload: True
    - watch:
      - file: /etc/nginx/sites-available/mysite
