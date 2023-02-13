%{
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
[0-9]+ {
    int num = atoi(yytext), sum = 0;
    while (num) {
        int d = num % 10;
        num = num / 10;
        sum += d * d * d;
    }
    if (sum == atoi(yytext)) {
        printf("Armstrong Number.");
    } else {
        printf("Not Armstrong Number.");
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
