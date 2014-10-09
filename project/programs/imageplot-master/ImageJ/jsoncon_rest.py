#!/usr/bin/env python

import csv
import json

csvfile = open('input.csv', 'r')
jsonfile = open('output.json', 'w')

fieldnames = ("url","brightness","saturation","hue","shapes")
reader = csv.DictReader( csvfile, fieldnames)
out = json.dumps( [ row for row in reader ], sort_keys=True, indent=4, separators=(',', ': ') ) #vanaf , prettify
jsonfile.write(out)

