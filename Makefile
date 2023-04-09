#---------------------------------------------------------------------------------
# Goals for Build
#---------------------------------------------------------------------------------
.PHONY: apfix widescreen musicPackCreator preLoadSettings

all:	apfix widescreen musicPackCreator preLoadSettings

apfix:
	$(MAKE) -C $@ all

widescreen:
	$(MAKE) -C $@ all

#musicPackCreator:
#	$(MAKE) -C $@ all

preLoadSettings:
	$(MAKE) -C $@ all

clean:
	$(MAKE) -C apfix clean
	$(MAKE) -C widescreen clean
#	$(MAKE) -C musicPackCreator clean
	$(MAKE) -C preLoadSettings clean
