%{
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
[0-9]+ {
    int n = atoi(yytext), i, f = 1;
    for (i = 2; i < (n / 2) + 1; i++) {
        if (!(n % i)) {
            printf("Not a prime number.");
            f = 0;
            break;
        }
    }
    if (f) {
        printf("prime number");
    }
}
%%

int main() {
    printf("Enter a number: ");
    yylex();
}

int yywrap() {
    return 1;
}
