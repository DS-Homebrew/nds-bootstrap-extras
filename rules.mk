ifneq (,$(shell which python3))
PYTHON	:= python3
else ifneq (,$(shell which python2))
PYTHON	:= python2
else ifneq (,$(shell which python))
PYTHON	:= python
else
$(error "Python not found in PATH, please install it.")
endif

#---------------------------------------------------------------------------------
# OUTPUT_DIR is the directory where final published files will be placed
#---------------------------------------------------------------------------------
OUTPUT_DIR		?=	.

#---------------------------------------------------------------------------------
# PACK is the command to be run for pack.py, including full path to pack.py
#---------------------------------------------------------------------------------
PACK_PY ?= $(shell pwd)/../pack.py

PACK := $(PYTHON) $(PACK_PY)
