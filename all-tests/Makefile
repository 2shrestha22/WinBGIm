# If not using TDM-GCC , add -static-libgcc flag to avoid link your program with libstdc++ runtime seprately
# If don't want an console showing up, add -mwindows flag.
CPPFLAGS = -L.. -I.. -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32

all: bug-circle.exe fractal.exe getimage-putimage.exe test-bgidemo0.exe test-colors.exe test-cube.exe test-dblbuff.exe test-fill.exe test-flood.exe test-fractal.exe test-fractal.exe test-get.exe test-getdisplaycolor.exe test-initwindow.exe test-mouse.exe test-putpixel.exe test-sidebyside.exe test-simple.exe
	@echo "DONE"

bug-circle.exe:
	g++ bug-circle.cxx $(CPPFLAGS) -o $@

fractal.exe:
	g++ fractal.cxx $(CPPFLAGS) -o $@
	
getimage-putimage.exe:
	g++ getimage-putimage.cxx $(CPPFLAGS) -o $@
	
test-bgidemo0.exe:
	g++ test-bgidemo0.cxx $(CPPFLAGS) -Wno-write-strings -o $@
	
test-colors.exe:
	g++ test-colors.cxx $(CPPFLAGS) -o $@
	
test-cube.exe:
	g++ test-cube.cxx $(CPPFLAGS) -o $@

test-dblbuff.exe:
	g++ test-dblbuff.cxx $(CPPFLAGS) -o $@

test-eyes.exe:
	g++ test-eyes.cxx $(CPPFLAGS) -o $@

test-fill.exe:
	g++ test-fill.cxx $(CPPFLAGS) -o $@
	
test-flood.exe:
	g++ test-flood.cxx $(CPPFLAGS) -o $@

test-fractal.exe:
	g++ test-fractal.cxx $(CPPFLAGS) -o $@

test-get.exe:
	g++ test-get.cxx $(CPPFLAGS) -o $@
	
test-getdisplaycolor.exe:
	g++ test-getdisplaycolor.cxx $(CPPFLAGS) -o $@

test-images.exe:
	g++ test-images.cxx $(CPPFLAGS) -o $@

test-initwindow.exe:
	g++ test-initwindow.cxx $(CPPFLAGS) -o $@

test-mouse.exe:
	g++ test-mouse.cxx $(CPPFLAGS) -o $@

test-putpixel.exe:
	g++ test-putpixel.cxx $(CPPFLAGS) -o $@

test-sidebyside.exe:
	g++ test-sidebyside.cxx $(CPPFLAGS) -o $@

test-simple.exe:
	g++ test-simple.cxx $(CPPFLAGS) -o $@

clean:
	rm ./*.exe

.PHONY: clean all