# Define list of files
FILES = file1.txt file2.txt

# Empty rule just to call dependency rules
all : $(FILES)

# Multiple targets can use the same rule
$(FILES) :
	echo "$@" > $@

# This is equivalent to copy-pasting this rule for each target in $FILES:
# file1.txt :
# 	echo "file1.txt" > file1.txt
# file2.txt :
# 	echo "file2.txt" > file2.txt

clean :
	rm -f $(FILES)

.PHONY : all clean
