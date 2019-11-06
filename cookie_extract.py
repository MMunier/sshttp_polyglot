
import sys
import os

msg = os.read(sys.stdin.fileno(), 10000)
cookie = msg[6:16+6]
with open("cookie", "wb") as f:
    f.write(cookie)

