%{
    #include <stdio.h>
%}

%%
(<[^>]+>) {}

. {
    fprintf(yyout, "%s", yytext);
}
%%

int main() {
    FILE extern *yyin, *yyout;
    yyin = fopen("in/input.html", "r");
    yyout = fopen("out/output.html", "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap() {
    return 1;
}
