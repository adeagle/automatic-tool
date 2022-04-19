from collections import namedtuple


class DeviceInfo(namedtuple('DeviceInfo',['measurement', 'ip_addr', 'hostname', 'cpu_utilization', 'mem_total', 'mem_free', 'mem_percent', 'mem_used', 'timestamp'])):
    pass


class DataBaseInfo():
    def __init__(self):
        self.url = 'http://47.241.70.72:8086'
        self.org = 'plct'
        self.bucket = 'rvlab'
        self.token = 'sYhtWrtNr9Tt-_DSLPvRS72u8kgwvZTSmTiydSBQa78zoqJiPKzLk21kNH7sYLCYWzF-9nnj6h98mwv1YyfPZg=='

