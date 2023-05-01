%{
/* program to find whether the input in noun or pronoun */
%}

%%
"bird"|"car"|"jack"|"Sakshi"|"cup" {printf("\n %s: is a noun", yytext);}
"I"|"you"|"Him"|"Her"|"He"|"She"|"they" {printf("\n %s: is a pronoun", yytext);}
"is"|"can"|"fly"|"eating"|"drive" {printf("\n %s: is a verb", yytext);}
%%

int main()
{
yylex();
}
