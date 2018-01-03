# org
### Hooks for the editor to set the default target
current: target
target = Makefile
-include target.mk
target: $(target)

##################################################################


Sources = Makefile .gitignore README.md sub.mk LICENSE.md
include sub.mk
# include $(ms)/perl.def

Sources += localrepos.def
-include $(ms)/repos.def
-include localrepos.def

##################################################################

mdirs += Planning

##################################################################

dirs += $(mdirs)
dfiles: $(dirs) $(dirs:%=%/Makefile)

Sources += $(dirs)

-include $(ms)/git.mk
-include $(ms)/visual.mk
-include $(ms)/modules.mk

# -include $(ms)/wrapR.mk
# -include $(ms)/oldlatex.mk
