# Define list of files
FILES = file1.txt file2.txt src1.c src2.c

.PHONY : base subst filter foreach shell user_func

base :
	@echo $(FILES)

# Pure string substitution
subst :
	# Simple
	@echo '$$(subst file,new,$$(FILES))'  # double $$ tells make not to expand
	@echo $(subst file,new,$(FILES))  # No spaces between arguments
	@echo ""
	# Nested
	@echo '$$(subst file,new,$$(subst src,new,$$(FILES)))'
	@echo $(subst file,new,$(subst src,new,$(FILES)))  # Can nest invocations

# Substitue full pattern in whitespace separated list
patsubst :
	# No full matches so won't do anything
	@echo '$$(patsubst file,new,$$(FILES))'
	@echo $(patsubst file,new,$(FILES))
	@echo ""
	# Use wildcards for substitution
	@echo '$$(patsubst %.txt,%.new,$$(FILES))'
	@echo $(patsubst %.txt,%.new,$(FILES))
	@echo ""
	# Simplified
	@echo '$$(FILES:%.txt=%.new)'
	@echo $(FILES:%.txt=%.new)  # No spaces between arguments still
	@echo ""
	# Simplified further for suffixes only (most common use)
	@echo '$$(FILES:.txt=.new)'
	@echo $(FILES:.txt=.new)

# Filter whitespace separated list
filter :
	# Get all .c files
	@echo '$$(filter %.c, $$(FILES))'
	@echo $(filter %.c, $(FILES))
	@echo ""
	# Get all NOT .c files
	@echo '$$(filter-out %.c, $$(FILES))'
	@echo $(filter-out %.c, $(FILES))

# Iterate through a whitespace separated list and operate on element
foreach :
	# Simple text manipulation
	@echo '$$(foreach f,$$(FILES),added_text_$$(f))'
	@echo $(foreach f,$(FILES),added_text_$(f))
	@echo ""
	# Functions
	@echo '$$(foreach f,$$(FILES),$$(subst file,new,$$(f)))'
	@echo $(foreach f,$(FILES),$(subst file,new,$(f)))


shell :
	# Each line is in a new shell instance
	echo `pwd`
	@echo ""
	cd ..
	echo `pwd`
	@echo ""
	# Do things in one line, backslash to linebreak if needed
	cd ..; \
	echo `pwd`


# User defined function just filters list into sub lists
define echo_files
	@echo "TXT: $(filter %.txt, $(1))"
	@echo "SRC: $(filter %.c, $(1))"
endef

user_func :
	@echo '$$(call echo_files,$$(FILES))'
	$(call echo_files,$(FILES))
