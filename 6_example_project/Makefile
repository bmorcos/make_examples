# Make it easy for other to change tool location or target architecture
TOOLCHAIN_ROOT   := /usr/bin/
TOOLCHAIN_PREFIX :=

# Grab tool paths as easy to change variables (we won't actually need all these)
CXX     := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)g++'
CC      := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)gcc'
AS      := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)as'
AR      := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)ar'
LD      := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)ld'
NM      := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)nm'
OBJDUMP := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)objdump'
OBJCOPY := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)objcopy'
SIZE    := '$(TOOLCHAIN_ROOT)$(TOOLCHAIN_PREFIX)size'

# Grab source files
SRCS := $(wildcard **/*.cc) $(wildcard **/*.c)

# Get list of header directories by finding files then extracting directories
INCS     := $(wildcard **/*.h)
INC_DIRS := $(dir $(sort $(INCS)))  # sort removes duplicates

# Get list of objects to build
OBJS := $(patsubst %.cc,%.o,$(patsubst %.c,%.o,$(SRCS)))

# Compile flags
CCFLAGS  = -std=c11
CXXFLAGS = -std=c++11

# Build C objects
%.o : %.c
	$(CC) $(CCFLAGS) $(foreach dir,$(INC_DIRS),-I$(dir)) -c $< -o $@
# Build C++ objects
%.o : %.cc
	$(CXX) $(CXXFLAGS) $(foreach dir,$(INC_DIRS),-I$(dir)) -c $< -o $@

# Build executable
hello_world : $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS)

print_vars :
	@echo "SRCS: $(SRCS)"
	@echo "OBJS: $(OBJS)"
	@echo "INCS: $(INCS)"
	@echo "INC_DIRS: $(INC_DIRS)"

clean :
	rm -f $(OBJS) hello_world

.PHONY : print_vars clean
