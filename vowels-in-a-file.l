%{
    #include <stdio.h>
    int count = 0;
%}

%%
[aeiouAEIOU] { count++; }
. {}
%%

int main() {
    FILE extern *yyin;
    yyin = fopen("in/input_spaces.txt", "r");
    yylex();
    fclose(yyin);
    printf("Number of vowels: %d", count);
    return 0;
}

int yywrap() {
    return 1;
}
