{% for room in ['1889023'] %}
sent_push_notification '{{ room }}':
  local.hipchat.send_message:
    - tgt: {{ data['data']['id'] }}
    - arg:
      - '{{ room }}'
      - "File '{{ data['data']['path'] }}' changed on '{{ data['data']['id'] }}'"
      - 'Salt Tutorial'
      - '833f3412d659afc4586f585e5d055a'
      - 'v1'
      - 'red'
      - 'True'
{% endfor %}
