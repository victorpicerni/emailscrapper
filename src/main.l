
%{

#include <stdio.h>

%}


%%


(([._-]*[A-z0-9])*@[A-z0-9]*([.][a-z]*)*) {printf("%s\n",yytext);}



[[:space:]]+ ;
[[:^space:]]+ ;

[.\n]* ;

%%

int main() {
  yylex();
  return 0;
}
