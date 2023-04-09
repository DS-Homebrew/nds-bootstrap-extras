include ../rules.mk

#---------------------------------------------------------------------------------
# OUTPUT_DIR is the directory where final published files will be placed
#---------------------------------------------------------------------------------
OUTPUT_DIR		:=	.

APFILES		:= files files/cht

#---------------------------------------------------------------------------------
# Goals for Build
#---------------------------------------------------------------------------------
.PHONY:

all:	$(OUTPUT_DIR)/apfix.pck

$(OUTPUT_DIR)/apfix.pck: $(APFILES)
	$(PACK) $^ -o $@

clean:
	rm -f $(OUTPUT_DIR)/*.pck
