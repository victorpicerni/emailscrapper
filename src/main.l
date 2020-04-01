
%{
#include <stdio.h>
%}


%%{
([._-]*[A-z])+?@[A-z]*([\.][a-z]*)?+

([._-]*[A-z])+?@[A-z]*([\.][a-z]*)?([\.][a-z]*)?+ printf("%s\n",yytext);}

%%

int main() {
  yylex();
  return 0;
}
