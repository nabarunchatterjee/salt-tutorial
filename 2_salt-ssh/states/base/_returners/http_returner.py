# Import python libs
import json

# Import Salt libs
import salt.utils.jid
import salt.returners


try:
    import requests
    HAS_REQUEST = True
except ImportError:
    HAS_REQUEST = False

__virtualname__ = 'http'


def __virtual__():
    if not HAS_REQUEST:
        return False
    return __virtualname__


def get_base_url():
    base_url = "http://" + __grains__.get('master') + ":5000/api/"
    return base_url


def returner(ret):
    base_url = get_base_url()
    url = base_url + ret['id'] + '/'
    requests.post(url, data=json.dumps(ret))
