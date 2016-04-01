CXX=clang++
EXEC=matmath
FLAGS=-std=c++14 -Wall -Wextra -Werror -pedantic-errors -Winit-self -Wswitch-default -Wswitch-enum -Wundef -Winline -Wunused -Wuninitialized
SRC=main.cc

all: debug
	
debug: clean
	@$(CC) $(FLAGS) -g $(SRC) -o $(EXEC)

release:
	@$(CC) $(FLAG) -O2 -DNDEBUG $(SRC) -o $(EXEC)

clean:
	@rm -rf *.o .*.h.swp .*.cc.swp $(EXEC)
