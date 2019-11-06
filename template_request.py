import sys
import os

with open("cookie", "rb") as f:
    cookie = f.read()

with open("req_template", "rb") as f:
    req = f.read().format(cookie)

os.write(sys.stdout.fileno(), req)