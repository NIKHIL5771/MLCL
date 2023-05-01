
%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
^[0-9]* printf("number");
^[a-zA-Z] printf("letter");
. ;
%%
int main()
{
	yylex();
		return 0;
}
