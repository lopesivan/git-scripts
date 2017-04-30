PROJECT = git-scripts

prefix ?= /usr/local

install: install-$(PROJECT)

chmod-755-$(PROJECT):
	@(find . -name \*.sh -exec readlink -f {} \; | \
		while read line; do \
			chmod +x $$line ;\
		done)

chmod-644-$(PROJECT):
	@(find . -name \*.sh -exec readlink -f {} \; | \
		while read line; do \
			chmod -x $$line ;\
		done)

install-$(PROJECT): chmod-755-$(PROJECT)
	@(find . -name \*.sh -exec readlink -f {} \; | \
		while read line; do \
			f=$${line##*/}; \
			l=$${f%.sh};    \
			sudo ln -s $$line $(prefix)/bin/git-$${l##*/};\
		done)

clean: chmod-644-$(PROJECT)
	@(find . -name \*.sh -exec readlink -f {} \; | \
		while read line; do \
			f=$${line##*/}; \
			l=$${f%.sh};    \
			sudo rm $(prefix)/bin/git-$${l##*/};\
		done)
