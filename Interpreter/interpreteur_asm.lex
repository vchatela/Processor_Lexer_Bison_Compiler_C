%{
#include <stdio.h>
#include "interpreteur.h"
%}

%%

"ADD"	return tADD;
"MUL"	return tMUL; 
"SUB"	return tSUB; 
"DIV"	return tDIV; 
"COP"	return tCOP; 
"AFC"	return tAFC; 
"JMP"	return tJMP; 
"JMF"	return tJMF;  
"INFEQ"	return tINFEQ;
"SUPEQ"	return tSUPEQ;
"INF"	return tINF;
"SUP"	return tSUP; 
"EQU"	return tEQU; 
"PRI"	return tPRI;

[ \t\n]+ ;

[0-9]+					{ 
							yylval.nb = atof(yytext);	// le champ "nb" (de type "int" défini dans le Yacc à l'aide de "l'union") récupère le nombre
							return tNB;					// on renvoie le token, auquel on a greffé la valeur récupérée précédemment
						}


