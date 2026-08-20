CXX      ?= g++
CXXFLAGS ?= -std=c++17 -O2 -Wall -Wextra

OUT   := out
PROGS := convolve dft harness wav_generator

.PHONY: all clean
all: $(addprefix $(OUT)/,$(PROGS))

# Each program is standalone — its own main(), no shared objects to link.
$(OUT)/%: src/%.cpp | $(OUT)
	$(CXX) $(CXXFLAGS) -o $@ $<

$(OUT):
	mkdir -p $(OUT)

clean:
	rm -rf $(OUT)

# The programs read and write in the *current* directory, not out/. Run them
# from wherever the .wav inputs live and where you want the .csv results:
#
#   make && ./out/harness              # writes passthrough_response.csv here
#   python3 tools/plot_spectrum.py passthrough_response.csv
