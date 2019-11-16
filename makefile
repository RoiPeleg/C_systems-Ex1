CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o basicMath.o
FLAGS= -Wall -g

all: mymathd mymathd mains maind	
mains: $(OBJECTS_MAIN) libmyMath.a
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN) 
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so
mymathd:libmyMath.so
mymaths:libmyMath.a
libmyMath.so: $(OBJECTS_LIB) myMath.h
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB) myMath.h
libmyMath.a: $(OBJECTS_LIB) myMath.h
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB) myMath.h
power.o: power.c 
	$(CC) $(FLAGS) -c power.c
basicMath.o: basicMath.c 
	$(CC) $(FLAGS) -c basicMath.c
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind