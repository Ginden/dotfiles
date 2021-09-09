 #!/usr/bin/python3

import sys
import os
import re

ubuntu_release = os.environ.get("UBUNTU_RELEASE")

prefix = f'http://manpages.ubuntu.com/manpages/{ubuntu_release}/en/'

for man_line in sys.argv[1:]:
    match_group = re.search("^(.*) \(([0-9]*)\)", man_line)
    number = match_group.group(2)
    name = match_group.group(1)
    print(f'{prefix}man{number}/{name}.{number}.html')





