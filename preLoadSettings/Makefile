include ../rules.mk

#---------------------------------------------------------------------------------
# OUTPUT_DIR is the directory where final published files will be placed
#---------------------------------------------------------------------------------
OUTPUT_DIR		:=	.

FILESDSI		:= files-dsi
FILES3DS		:= files-3ds

#---------------------------------------------------------------------------------
# Goals for Build
#---------------------------------------------------------------------------------
.PHONY: all

all:	$(OUTPUT_DIR)/preLoadSettingsDSi.pck $(OUTPUT_DIR)/preLoadSettings3DS.pck

$(OUTPUT_DIR)/preLoadSettingsDSi.pck: $(FILESDSI)
	$(PACK) $^ -o $@

$(OUTPUT_DIR)/preLoadSettings3DS.pck: $(FILES3DS)
	$(PACK) $^ -o $@

clean:
	rm -f $(OUTPUT_DIR)/*.pck
