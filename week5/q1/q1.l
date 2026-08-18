%{
#include<iostream>
#include<cstdlib>
#include "q1.tab.h"
using namespace std;
%}

%%
'0' {return '0';}
'1' {return '1';}
\n {return '\n';}
[ \t] {}
. {return yytext[0];}
%%

int yywrap(){
  return 1;
}
