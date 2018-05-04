from cm_api.api_client import ApiResource
from cm_api.endpoints.cms import ClouderaManager
CM_HOST = "{{ CMhost }}"
CM_USERNAME = "{{ username }}"
CM_PASSWD = "{{ password }}"
CLUSTER_NAME = "{{ cluster_name }}"
CM_PORT = {{ CMport }}
HOST_NAME = "{{ hostname }}"
RACK_ID = "{{ rack }}"

api = ApiResource(CM_HOST,CM_PORT,CM_USERNAME,CM_PASSWD,version=18)
cluster = api.get_cluster(CLUSTER_NAME)
host = api.get_host(HOST_NAME)
host.set_rack_id(RACK_ID)
host_id = api.get_host(HOST_NAME).hostId
cluster.add_hosts([host_id])
