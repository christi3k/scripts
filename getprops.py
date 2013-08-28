#!/usr/bin/env python
# getprops.py
# Author: Christie Koehler <ck@christi3k.net>
# Dsecription: Outputs .properties file from data-l10n-id attributes.

import sys
import os
from bs4 import BeautifulSoup
if os.path.exists(sys.argv[1]):
    soup = BeautifulSoup(open(sys.argv[1]))
    for element in soup.findAll(attrs={'data-l10n-id': True}):
        print element.attrs['data-l10n-id'], " = ", element.string
else:
    print "Please supply a valid filename."
