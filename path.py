import os
from pathlib import Path
HOME = Path.home()
PATH = os.path.relpath(os.path.dirname(os.path.realpath(__file__)), HOME)
os.sys.stdout.write(PATH)
