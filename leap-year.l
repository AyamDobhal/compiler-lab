%{
    #include <stdio.h>
    #include <stdlib.h>
%}

%%
[0-9]{4} {
    int y = atoi(yytext);
    if (!(y % 4)) {
        if (!(y % 100)) {
            if (!(y % 400)) {
                printf("Leap Year");
            } else {
                printf("Not Leap Year");
            }
        } else {
            printf("Leap Year");
        }
    } else {
        printf("Not Leap Year");
    }
}
%%

int main() {
    printf("Enter a year: ");
    yylex();
}

int yywrap() {
    return 1;
}
