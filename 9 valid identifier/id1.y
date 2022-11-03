%token DIGIT LETTER NL UND
%%
stmt : variable NL { printf(“Valid Identifiers\n”); exit(0);}
 ;

variable : LETTER alphanumeric
 ;
alphanumeric: LETTER alphanumeric
 | DIGIT alphanumeric
 | UND alphanumeric
 | LETTER
 | DIGIT
 | UND
 ;
%%
int yyerror(char *msg)
{
printf(“Invalid Expression\n”);
exit(0);
}
main ()
{
printf(“Enter the variable name\n”);
yyparse();
} 
