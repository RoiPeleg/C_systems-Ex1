CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o basicMath.o
FLAGS= -Wall -g

all: myMathlib.so myMathlib.a mains maind	
mains: $(OBJECTS_MAIN) myMathlib.a 
	$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) ./myMathlib.a
maind: $(OBJECTS_MAIN)
	$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./myMathlib.so
myMathlib.so: $(OBJECTS_LIB)
	$(CC) -shared -o myMathlib.so $(OBJECTS_LIB)
myMathlib.a: $(OBJECTS_LIB)
	$(AR) -rcs myMathlib.a $(OBJECTS_LIB)
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
basicMath.o: basicMath.c myMath.h
	$(CC) $(FLAGS) -c basicMath.c
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 

.PHONY: clean all

clean:
	rm -f *.o *.a *.so mains maind