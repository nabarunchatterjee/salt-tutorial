
# Import salt libs
import salt


# Define the module's virtual name
__virtualname__ = 'my_module'


def __virtual__():
    '''
    Confirm the node_type is vagrant
    '''
    grains = __grains__.get('node_type', False)
    if 'vagrant' in grains:
        return __virtualname__
    return False


def get_salt_files():
    """
    Returns the list of salt config files
    """
    output = []
    result = {}
    cmd = "find /etc/salt -type f -follow -print"
    cmd_output = __salt__['cmd.shell'](cmd)
    output = [line for line in cmd_output.splitlines()]
    result['files'] = output
    return result


def get_node_type():
    """
    Returns the node_type grain value
    """
    node_type = __grains__.get('node_type', False)
    return node_type


def get_cluster():
    """
    Returns the cluster grain value
    """
    cluster = __grains__.get('cluster', False)
    return cluster


def test():
    print "Hello"
    return {'hello':'world'}
