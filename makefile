
all: calculator_test calculator

calculator_test: calculatorFunc.c calculatorTest.c ../Libs/unity/src/unity.c
		gcc -o calculator_test calculatorFunc.c calculatorTest.c ../Libs/unity/src/unity.c

calculator: calculatorFunc.c calculatorIO.c
		gcc -o calculator calculatorFunc.c calculatorIO.c

clean:
				-rm -f *.o
				-rm -f *.exe

run:
				calculator.exe
test:
				calculator_test.exe
