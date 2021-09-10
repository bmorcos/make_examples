# Define list of files
FILES = file1.txt file2.txt

# Dependent variables to illustrate different assignment
VAR ?= BASE
CONTENT = $(VAR)
# CONTENT := $(VAR)

# Empty rule just to call dependency rules
all : $(FILES)

# The wildcard target matches all .txt files
# The wildcard dependency takes the full filename and adds the .stuff suffix
# Typically the dependency would be a real file (i.e. source code) but here we
# just fake it with another target
%.txt : %.stuff
	@echo "Adding $<"
	@echo "Var: $(VAR)"
	@echo "Content: $(CONTENT)"
	@echo $(CONTENT) > $@
	@echo ""

%.stuff :
	@$(eval VAR += $@)  # Need eval to run assignment inside a rule

clean :
	rm -f $(FILES)

.PHONY : all clean %.stuff
