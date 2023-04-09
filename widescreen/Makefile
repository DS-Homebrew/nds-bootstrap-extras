include ../rules.mk

#---------------------------------------------------------------------------------
# OUTPUT_DIR is the directory where final published files will be placed
#---------------------------------------------------------------------------------
OUTPUT_DIR		:=	.

WIDEFILES	:= files

#---------------------------------------------------------------------------------
# Goals for Build
#---------------------------------------------------------------------------------
.PHONY:

all:	$(OUTPUT_DIR)/widescreen.pck

$(OUTPUT_DIR)/widescreen.pck: $(WIDEFILES)
	$(PACK) $^ -o $@

clean:
	rm -f $(OUTPUT_DIR)/*.pck
