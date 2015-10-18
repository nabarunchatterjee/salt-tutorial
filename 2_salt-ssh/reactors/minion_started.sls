{% for room in ['1889023'] %}
sent_push_notification '{{ room }}':
  local.hipchat.send_message:
    - tgt: {{ data['id'] }}
    - arg:
      - '{{ room }}'
      - "{{ data['data'] }}"
      - 'Salt Tutorial'
      - '833f3412d659afc4586f585e5d055a'
      - 'v1'
      - 'red'
      - 'True'
{% endfor %}
