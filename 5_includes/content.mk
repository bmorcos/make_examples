# Define list of files
FILES = file1.txt file2.txt src1.c src2.c

define echo_files
	@echo "TXT: $(filter %.txt, $(1))"
	@echo "SRC: $(filter %.c, $(1))"
endef
