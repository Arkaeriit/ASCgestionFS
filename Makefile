FLAGS = -Wall -Werror
LIBLUAPATH_5_3 = /usr/local/lib/lua/5.3
LIBLUAPATH_5_4 = /usr/local/lib/lua/5.4
LIBPATH = /usr/lib64

all : gestionFS.so

gestionFS.o : gestionFS.c
	gcc -c -fPIC gestionFS.c $(FLAGS) -o gestionFS.o

gestionFS.so : gestionFS.o
	gcc -shared gestionFS.o $(NC) -o gestionFS.so

install : 
	mkdir -p $(LIBLUAPATH_5_3) $(LIBLUAPATH_5_4) $(LIBPATH)
	cp -f gestionFS.so $(LIBLUAPATH_5_3)/gestionFS.so
	cp -f gestionFS.so $(LIBLUAPATH_5_4)/gestionFS.so
	cp -f gestionFS.so $(LIBPATH)/libgestionFS.so

uninstall :
	rm -f $(LIBLUAPATH)/gestionFS.so
	rm -f $(LIBPATH)/libgestionFS.so

clean :
	rm -f *.o
	rm -f *.so

