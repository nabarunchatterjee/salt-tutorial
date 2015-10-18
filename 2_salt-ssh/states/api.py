''' Simple Flask app to show returned value from minions '''
from flask import Flask, request


MINION_RETURN = Flask(__name__)


@MINION_RETURN.route('/api/<string:host_id>/', methods=['GET', 'POST'])
def some_url(host_id):
    ''' Random url '''
    print host_id
    print request.data
    return "%s" % (str(request)), 200


if __name__ == '__main__':
    MINION_RETURN.run('0.0.0.0', debug=True)
