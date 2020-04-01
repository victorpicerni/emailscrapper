
%{

#include <stdio.h>

%}


%%



(([._-]*[A-z0-9])*@[A-z0-9]*([.]*[a-z])*)	 {printf("%s\n",yytext);}


[^ \t\r\nA-Za-z0-9][^ \t\r\n]* ;
[^ \t\r\n]*[^ \t\r\nA-Za-z0-9\.] ;
[[:space:]]+ ;
[[:^space:]] ;

[.\n]* ;

%%

int main() {
  yylex();
  return 0;
}
