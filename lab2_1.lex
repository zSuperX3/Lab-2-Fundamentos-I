%{
#include<stdio.h> 
#include<string.h> 
int n_cont = 0;
int w_cont = 0;
char word[] = "integral";
%}

word [a-zA-Z]+

%%

[ ]{2,}   { printf(" "); }

[\t]{2,}    { printf("\t"); }

{word}  { if(strcmp(yytext, word)==0){w_cont++;} printf("%s", yytext); }

\#[^\n]*    ;

ñ   { printf("n"); }
Ñ   { printf("N"); }
;   { printf("%s\n", yytext); }

[0-9]+   { n_cont++; printf("%s", yytext); }

.|\n    { printf("%s", yytext); }

%%

int main(int argc, char *argv[]) {
    if (argc > 1) {
        strcpy(word, argv[1]);  // Copia el argumento a 'word'
    }
    yylex();
    fflush(stdout);
    fprintf(stderr, "Números: %d\n", n_cont);
    fprintf(stderr, "La palabra '%s' aparece %d vez/veces en el fichero\n", word, w_cont);
    printf("\n");
    return 0;
}