%{
	#include <stdio.h>
%}
%%
(\/\/.+)|(\/\*(.[^\*\/]+)\*\/) {}
. {
	fprintf(yyout,"%s",yytext);
}
%%
int main(){
	FILE extern *yyin,*yyout;
	yyin = fopen("in/input.c","r");
	yyout = fopen("out/output.c","w");
	yylex();
	return 0;
}
int yywrap(){
	return 1;
}
