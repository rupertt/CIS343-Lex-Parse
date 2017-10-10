all: calc.lex lex.yy.c
	flex calc.lex && clang lex.yy.c -ll
