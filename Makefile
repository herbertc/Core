OBJECTS = data.o generic.o sound.o wave.o format.o chunkfactory.o \
		meta.o lgmk.o 
INCLUDES = include/data.h include/chunk.h include/generic.h include/sound.h \
		include/wave.h include/format.h include/chunkfactory.h \
		include/meta.h include/lgmk.h

all: 
	@make libcore.a

libcore.a: $(INCLUDES) $(OBJECTS)
	ar rcs $@ $(OBJECTS)
	
%.o: %.cpp
	g++ -c -o $@ -W -Wall -pedantic -ansi -I./include $<

clean:
	@rm -rf *.o *.a *~