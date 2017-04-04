./bin/func: ./obj/main.o ./obj/hello.o ./bin
    gcc ./obj/main.o ./obj/hello.o -o ./bin/hello

./obj/main.o: ./src/main.c ./obj
    gcc -c ./src/main.c -o ./obj/main.o -Wall

./obj/func.o: ./src/h.c ./obj
    gcc -c ./src/func.c -o ./obj/func.o -Wall

./bin:  
    mkdir bin

./obj: 
    mkdir obj

.PHONY: clean
clean:
    rm -f -r bin/ obj/