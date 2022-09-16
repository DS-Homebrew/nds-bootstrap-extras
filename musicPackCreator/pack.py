#!/usr/bin/env python

import argparse
import os
import struct
import sys

parser = argparse.ArgumentParser(description="Packs many small files into a single file for TWiLight Menu++")
parser.add_argument("dirs", metavar="inputs", type=str, nargs="+", help="directories to include from")
parser.add_argument("-o", "--output", metavar="output.pck", type=str, nargs=1, help="file to output to", required=True)

args = parser.parse_args()

files = []

# Get list of files and data from them
for dir in args.dirs:
	for file in os.listdir(dir):
		if not file[-3:] in ["raw"]:
			continue

		with open(os.path.join(dir, file), "rb") as f:
			files.append({
				"name": file,
				"data": f.read()
			})

files = sorted(files, key=lambda x: x["name"])

# Write file
with open(args.output[0], "wb") as f:
	f.write(b".PCK") # Format magic
	f.write(struct.pack("<l", len(files))) # File count
	f.write(b"\x00" * 8) # Padding

	# Position of data, starts after the file list
	position = 16 + len(files) * 16

	# Write file list
	for file in files:
		# Position of music data, Size of music data, Loop position of music data (Not implemented), Padding
		f.write(struct.pack("<llll", position, len(file["data"]), 0, 0))
		position += len(file["data"])

	# Write data
	for file in files:
		f.write(file["data"])
