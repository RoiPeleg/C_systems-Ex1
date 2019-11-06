CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=basicMath.o, power.o
FLAGS= -Wall -g

all: myMathlib.so myMathlib.a mymaths mymathd	
mymaths: $(OBJECTS_MAIN) myMathlib.a 
	$(CC) $(FLAGS) -o mymaths $(OBJECTS_MAIN) myMathlib.a
mymathd: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o mymathd $(OBJECTS_MAIN) ./myMathlib.so
myMathlib.so: $(OBJECTS_LIB)
	$(CC) -shared -o myMathlib.so $(OBJECTS_LIB)
myMathlib.a: $(OBJECTS_LIB)
	$(AR) -rcs myMathlib.a $(OBJECTS_LIB)	
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mymaths mymathd