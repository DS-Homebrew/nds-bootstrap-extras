PACK_PY	:=	$(shell pwd)/pack.py

include ../rules.mk

#---------------------------------------------------------------------------------
# OUTPUT_DIR is the directory where final published files will be placed
#---------------------------------------------------------------------------------
OUTPUT_DIR		:=	.

MUSICFILES		:= raw

#---------------------------------------------------------------------------------
# Goals for Build
#---------------------------------------------------------------------------------
.PHONY:

all:	$(OUTPUT_DIR)/music.pck

$(OUTPUT_DIR)/music.pck: $(MUSICFILES)
	$(PACK) $^ -o $@

clean:
	rm -f $(OUTPUT_DIR)/*.pck
