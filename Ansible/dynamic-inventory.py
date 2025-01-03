#!/usr/bin/env python3

import json

def fetch_hosts_from_db():
    return {
        "jenkins": {
            "hosts": ["1.1.1.1"]
        },
        "app": {
            "hosts": ["2.3.4.5"]
        }
    }

if __name__ == "__main__":
    hosts = fetch_hosts_from_db()
    print(json.dumps(hosts))
