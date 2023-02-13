%{
    #include <stdio.h>
    int yyerror(const char* s) {
        printf("Invalid date: %s", s);
        return 0;
    }
%}

%%
(([0-2][0-9])|(3[0-1]))\/((0[0-9]|1[0-2]))\/[0-9]{4} {
    printf("Valid date");
}

[0-9A-Za-z]+ {
    yyerror(yytext);
}
%%

int main() {
    printf("Enter a date (dd/mm/yyyy format): ");
    yylex();
}

int yywrap() {
    return 1;
}
