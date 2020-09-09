FLAGS = -Wall -Werror
LIBLUAPATH = /usr/local/lib/lua/5.3
LIBPATH = /usr/lib64

all : gestionFS.so

gestionFS.o : gestionFS.c
	gcc -c -fPIC gestionFS.c $(FLAGS) -o gestionFS.o

gestionFS.so : gestionFS.o
	gcc -shared gestionFS.o $(NC) -o gestionFS.so

install : 
	cp -f gestionFS.so $(LIBLUAPATH)/gestionFS.so
	cp -f gestionFS.so $(LIBPATH)/libgestionFS.so

uninstall :
	rm -f $(LIBLUAPATH)/gestionFS.so
	rm -f $(LIBPATH)/libgestionFS.so

clean :
	rm -f *.o
	rm -f *.so

