%{
    #include <stdio.h>
%}

%%
-[0-9]+ {
    printf("Negative");
}

[+]?[0-9]+ {
    printf("Positive");
}
%%

int main() {
    printf("Enter a number: ");
    yylex();
}

int yywrap() {
    return 1;
}
