%%
[aA]    { printf("C"); }
[bB]    { printf("I"); }
[cC]    { printf("S"); }
[dD]    { printf("Q"); }
[eE]    { printf("V"); }
[fF]    { printf("N"); }
[gG]    { printf("F"); }
[hH]    { printf("O"); }
[iI]    { printf("W"); }
[jJ]    { printf("A"); }
[kK]    { printf("X"); }
[lL]    { printf("M"); }
[mM]    { printf("T"); }
[nN]    { printf("G"); }
[oO]    { printf("U"); }
[pP]    { printf("H"); }
[qQ]    { printf("P"); }
[rR]    { printf("B"); }
[sS]    { printf("K"); }
[tT]    { printf("L"); }
[uU]    { printf("R"); }
[vV]    { printf("E"); }
[wW]    { printf("Y"); }
[xX]    { printf("D"); }
[yY]    { printf("Z"); }
[zZ]    { printf("J"); }
[1]     { printf("4"); }
[2]     { printf("7"); }
[3]     { printf("2"); }
[4]     { printf("9"); }
[5]     { printf("1"); }
[6]     { printf("3"); }
[7]     { printf("0"); }
[8]     { printf("6"); }
[9]     { printf("8"); }
[0]     { printf("5"); }

.|\n    { printf(yytext); }
%%

int main(){
    yylex();
    printf("\n");
    return 0;
}