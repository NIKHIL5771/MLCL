%{
/* program to display an enter */
%}

delimiter [\n\t]
ws {delimiter}+
digit [0-9]
letter [A-Za-z]
number {digit}+
id {letter}({letter}|{digit})*

%%
{ws} {}
if|then|else|for|while|switch|do|char|int {printf("\n %s: is a keyword \n", yytext);}

\++ {printf("\n %s: is a increment operator \n", yytext);}
\-- {printf("\n %s: is a decrement operator \n",yytext);}
"{"|"}" {printf("\n %s: is a Curly Bracket \n",yytext);}
"("|")" {printf("\n %s: is a Bracket \n" , yytext);}
";" {printf("\n %s: is a semicolon \n", yytext);}
{id} {printf("\n %s: is a identifier \n", yytext);}
{number} {printf("\n %s: is a number \n",yytext);}
"<"|">"|"="|"=="|"<="|">=" {printf("\n %s: is a relational operator \n",yytext);}
%%

int main()
{
yylex();
}
