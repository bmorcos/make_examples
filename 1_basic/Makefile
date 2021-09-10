# Default target since it's first
# Will execute `file1.txt` first since it's a prerequisite
file2.txt : file1.txt
	echo "Generated 2nd" > file2.txt

file1.txt :
	echo "Generated 1st" > file1.txt

# Label below targets as rules only, not files
.PHONY : print1 clean

# The '@' suppresses the command echo in the terminal
print1 :
	@cat file1.txt

# Always a good idea to include this
# Showing multi-line command but this could be a single rm call
clean :
	rm -f file1.txt
	rm -f file2.txt
