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

bitbucket = git clone https://dushoff@bitbucket.org/dushoff/$@.git
dushoff = git clone https://github.com/dushoff/$@.git
theobio = git clone https://github.com/mac-theobio/$@.git

clonedirs += Planning
Planning:
	$(dushoff)

clonedirs += Correspondence
Correspondence:
	$(dushoff)

clonedirs += Lab_meeting
Lab_meeting:
	$(theobio)

clonedirs += New_CV
New_CV:
	$(bitbucket)

clonedirs += notebook
notebook:
	git clone -b gh-pages https://github.com/dushoff/$@.git

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
