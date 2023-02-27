%{
    #include <stdio.h>
%}

%%
[ \n\r\t]+ {}

. {
    fprintf(yyout, "%s", yytext);
}
%%

int main() {
    FILE extern *yyin, *yyout;
    yyin = fopen("in/input_spaces.txt", "r");
    yyout = fopen("out/output_spaces.txt", "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap() {
    return 1;
}
