# If not using TDM-GCC , add -static-libgcc flag to avoid link your program with libstdc++ runtime seprately
# If don't want an console showing up, add -mwindows flag.
CPPFLAGS = -L.. -I.. -lbgi -lgdi32 -lcomdlg32 -luuid -loleaut32 -lole32

helloworld:
	g++ helloworld.c $(CPPFLAGS) -o helloworld.exe
	
clean:
	rm helloworld.exe

.PHONY: clean