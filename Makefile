# org
### Hooks for the editor to set the default target
### This is a repo of clones; doesn't make hard products, doesn't need sub.mk

current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################

Sources = Makefile .ignore README.md makestuff.mk LICENSE.md
# include $(ms)/perl.def

-include makestuff.mk

##################################################################

clonedirs += Planning
Planning:
	git clone https://github.com/dushoff/Planning.git $@

clonedirs += Correspondence
Correspondence:
	git clone https://dushoff@bitbucket.org/dushoff/correspondence.git $@

clonedirs += Lab_meeting
Lab_meeting:
	git clone https://github.com/mac-theobio/Lab_meeting.git $@

##################################################################

dirs += $(mdirs)
dfiles: $(dirs) $(dirs:%=%/Makefile)

Sources += $(dirs)

######################################################################

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/modules.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
