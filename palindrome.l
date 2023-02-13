%{
    #include<stdio.h>
    int f=0;
%}

%%
[A-Za-z0-9]+ {
    int len = yyleng - 1, i = 0;
    f = 0;
    for (i = 0; i < len; i++) {
        if (yytext[i] != yytext[len - i]) {
            f = 1;
            break;
        }
    }
    if (f) 
        printf("Not a palindrome");
    else
        printf("Palindrome");
}
%%

int main() {
    printf("Enter a string: ");
    yylex();
}
int yywrap() {
    return 1;
}