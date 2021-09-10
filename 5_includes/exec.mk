
.PHONY : user_func

user_func :
	@echo '$$(call echo_files,$$(FILES))'
	$(call echo_files,$(FILES))
