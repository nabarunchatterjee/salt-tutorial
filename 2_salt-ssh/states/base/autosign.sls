/etc/salt/autosign.conf:                                                        
  file.append:                                                                  
    - text:                                                                     
{% for id,ip in salt['pillar.get']('minion_list').iteritems() %}                           
      - {{id}}                                                              
{% endfor %} 
