%{
#include<iostream>
#include<cstdlib>
using namespace std;
int yylex();
void yyerror(const char* s);
%}

%%
input:
  S '\n' {
    cout<<"Valid String!\n";
    exit(0);
    }
  ;
  S:
    'a' S | 'a' B ;

  B:
    'b' B | 'b' C ;

  C:
    'c' ;
%%

void yyerror(const char*s){
  cout<<"Invalid string!\n";
  exit(0);
}
int main(){
  cout<<"Enter string: ";
  yyparse();
  return 0;
}
