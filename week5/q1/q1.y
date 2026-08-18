%{
#include<iostream>
#include<cstdlib>
using namespace std;
void yyerror(const char* s);
int yylex();
%}

%%
input:
  S '\n' {
        cout<<"Valid String!\n";
        exit(0);
    }
;
S:
'0' S '1'
| '0' '1'
;
%%

void yyerror(const char*s){
  cout<<"Invalid String!\n";
  exit(0);
}

int main(){
  cout<<"Enter string: ";
  yyparse();
  return 0;
}
