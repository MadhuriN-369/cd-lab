%{
#include<iostream>
#include "q2.tab.h"
%}

%%
a {return 'a';}
b {return 'b';}
c {return 'c';}
\n {return '\n';}
[ \t] {}
. {return yytext[0];}
%%

int yywrap(){
  return 1;
}
