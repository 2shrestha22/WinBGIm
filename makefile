# Just run `make` to build. you'll get a `libbgi.a` and a `graphics.h`
# If you need the `bgi` command-line build helper, run `make all` or `make bgi.exe`
CPPFLAGS = -c -O3 -fno-rtti -fno-exceptions

libbgi.a: drawing.o misc.o mouse.o palette.o text.o winbgi.o winthread.o file.o dibutil.o winbgim.h graphics.h
	ar -rv libbgi.a drawing.o misc.o mouse.o palette.o text.o winthread.o winbgi.o file.o dibutil.o

all: libbgi.a bgi.exe
	@echo "DONE"

clean:
	rm *.o  
	rm libbgi.a

drawing.o: drawing.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) drawing.cxx

misc.o: misc.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) misc.cxx

mouse.o: mouse.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) mouse.cxx

palette.o: palette.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) palette.cxx

text.o: text.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) text.cxx

winbgi.o: winbgi.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) winbgi.cxx

winthread.o: winthread.cxx winbgim.h winbgitypes.h
	g++ $(CPPFLAGS) winthread.cxx

dibutil.o: dibutil.cxx dibutil.h dibapi.h
	g++ $(CPPFLAGS) dibutil.cxx

file.o: file.cxx dibutil.h dibapi.h winbgitypes.h
	g++ $(CPPFLAGS) -c file.cxx

graphics.h: winbgim.h
	rm graphics.h
	cp winbgim.h graphics.h

bgi.exe: bgi.cxx
	g++ bgi.cxx -o bgi.exe

.PHONY: clean all