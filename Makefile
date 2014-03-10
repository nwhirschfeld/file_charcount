CC		= /usr/bin/gcc
SCFLAGS	= -ggdb -Wall
OUTPUT	= bin
BINARY	= run

OBJ		= *.c


# LIBS
		# for sdl run "sdl-config --libs" to get 
		#LIBS_SDL		= 
		#LIBS_SDL_DRAW	= 
	LIBS 			= #$(LIBS_SDL) $(LIBS_SDL_DRAW)

# FLAGS
		# and run "sdl-config --cflags" to get
		#CFLAGS_SDL 		=  
		#CFLAGS_SDL_DRAW	= 
	CFLAGS			= #$(CFLAGS_SDL) $(CFLAGS_SDL_DRAW)


make: $(OBJ)
	mkdir -p $(OUTPUT)
	$(CC) $(LIBS) $(CFLAGS) $(SCFLAGS) -o $(OUTPUT)/$(BINARY) $(OBJ)

run: 
	./$(OUTPUT)/$(BINARY) t1 t2 t3 t4

clean:
	rm -rf $(OUTPUT)
