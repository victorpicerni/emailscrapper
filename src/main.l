
%{

#include <stdio.h>

%}


%%


[A-z0-9]+([._-]*[A-z0-9])*@[A-z0-9]*([.]*[a-z])*	 {printf("%s\n",yytext);}
[A-z0-9]+([._-]*[A-z0-9])*@[A-z0-9]*[A-z]+[\._-]	 

\n ;

. ;

%%

int main() {
  yylex();
  return 0;
}
