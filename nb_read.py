
import sys
import os

os.write(sys.stdout.fileno(), (os.read(sys.stdin.fileno(), 10000)))
