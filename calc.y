%{
        #include <stdio.h>
%}
%union {
        int ival;
        float fVal;
        char* sVal;
}
%token <sVal> INT
%token <sVal> FLOAT
%token ADD
%token SUB
%token MULT
%token DIV
%token END
%token <sVal> VAR
%token EQ
%%

program:                statement_list END
statement_list:         statement
        |               statement statement_list
statement:              variable operation statement
        |               variable operation variable EQ variable
variable:               INT
        |               FLOAT
        |               VAR
operataion:             ADD
        |               MULT
        |               SUB
        |               DIV

%%
int main( int argc, char** argv) {
        yyparse();
        return 0;
}
