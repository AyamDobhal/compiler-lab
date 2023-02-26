%{
    #include <stdio.h>
%}

%%
[A-Za-z0-9 ]+ {
    int c = 0, n = yyleng, i = 0;
    char* s = yytext;
    char x = s[0];
    for (i = 2; i < n; i++) {
        if (s[i] == x) c++;
    }
    printf("Frequency of %c is: %d", s[0], c);
}
%%

int main() {
    printf("Enter a character and a string(space separated): ");
    yylex();
}

int yywrap() {
    return 1;
}
