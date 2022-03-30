
greeting: greeting.o main.o
	g++ greeting.o main.o -o greeting

greeting.o: greeting.cpp greeting.h
	g++ -c greeting.cpp

main.o: main.cpp greeting.h
	g++ -c main.cpp

clean:
	rm *.o greeting