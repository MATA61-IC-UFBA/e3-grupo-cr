%option noyywrap yylineno nodefault
%{

#include "token.h"

%}

DIGIT [0-9]
number {DIGIT}+ 
letter [A-Za-z]
id {letter}({letter}|{DIGIT}|(\_))*
str \"([^\"\n]*)\" 

comments (\/\/).*$

char \'[^\'\n]\'
char2 \'\\[^\']\'
char3 \'\\\'\'


%%
{comments} { /* ignore comments */ }

[ \t\n\r]   { /* ignore whitespace */ }


boolean {return BOOLTYPE; }
integer {return INTTYPE; }
void {return VOIDTYPE; }
char {return CHARTYPE;}
string {return STRTYPE;}

array {return ARRAY; }

if {return IF; }
else {return ELSE; }
true {return TRUE; }
false {return FALSE; }

function {return FUNCTION; }
return {return RETURN; }
print {return PRINT; }

while {return WHILE; }
for {return FOR;}




"+" { return 43; }
"-" { return 45; }
"*" { return 42; }
"/" { return 47; }
"%" { return 37; }
"!" { return 33; }
"!=" { return NEQ; }
"<" { return 60; }
"<=" { return LEQ; }
">" { return 62; }
">=" { return GEQ; }
"=" { return 61; }
"==" { return EQ; }
":" { return 58; }
";" { return 59; }
"," { return 44; }
"(" { return 40; }
")" { return 41; }
"[" { return 91; }
"]" { return 93; }
"{" { return 123; }
"}" { return 125; }
"&&" { return AND; }
"||" { return OR; }

{char} { return CHAR; }
{char2} { return CHAR; }
{char3} { return CHAR; }
{str}   {return STR; }
{number} { return NUM; }
{id} { return ID; }
. { return ERROR;  }

%%

