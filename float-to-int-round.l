%{
    #include <stdio.h>
%}

%%
[+-]?[0-9]+\.[0-9]{2} {
    int i, j = 0;
    char *dec = (char *)malloc(2);
    for (i = yyleng - 2; i < yyleng; i++) {
        dec[j] = yytext[i];
        j++;
    }
    int d = atoi(dec);
    char *num = (char *)malloc(yyleng - 3);
    for (i = 0; i < yyleng - 3; i++) {
        num[i] = yytext[i];
    }
    int n = atoi(num);
    if (d > 49)
        printf("%d", n + 1);
    else
        printf("%d", n);
}
%%

int main() {
    printf("Enter a number with a decimal (upto 2 digit decimal): ");
    yylex();
}

int yywrap() {
    return 1;
}
