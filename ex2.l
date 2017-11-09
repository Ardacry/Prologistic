%option main 
DIGIT [0-9]
DOT \.
ASSIGN \=
LEQUAL \<\=
GEQUAL \>\=
NOT_EQUAL \!\=
EQUAL \=\=
NOT \!
OR \|
AND \&
IN in
OUT out
STRING \"([^\\\"]|\\\"|\\\n|\\\\)*\"
TRUE (true|TRUE|True|{POSITIVE})
FALSE (false|False|FALSE|{NEGATIVE})
IMPLY \-\>
LESS \<
GREATER \>
IMPLY_IMPLY ({LESS}{IMPLY})
XOR \^
IF if
ELSE else
WHILE while
LEFT_PARANTEZ \(
RIGHT_PARANTEZ \)
NOR ({NOT}{OR})
NAND ({NOT}{AND})
NEG_SIGN \-
SUM \+
POSITIVE ({SUM}?{DIGIT}+)
NEGATIVE ({NEG_SIGN}{DIGIT}+)
LETTER [A-Za-z]
ALPHANUMERIC ({DIGIT}|{LETTER})
ID ({LETTER}{ALPHANUMERIC}*)
BOOLEAN bool
STATEMENT statement
VOID void
RETURN return
LCURLY \{
RCURLY \}
RBRACET \[
LBRACET \]
SEMICOLON  \;
CONSTANT const
NULL null
COMMENT  \#
BEG_COM \#\*
END_COM \*\#
%%
{NAND} printf("NAND ");
{NOR} printf("NOR ");
{XOR} printf("XOR ");
{GREATER} printf("GREATER "); 
{LESS} printf("LESS ");
{RIGHT_PARANTEZ} printf("RIGHT_PARANTEZ ");
{LEFT_PARANTEZ} printf("LEFT_PARANTEZ ");
{TRUE} printf("TRUE ");
{FALSE} printf("FALSE ");
{BEG_COM} printf("BEG_COM ");
{END_COM} printf("END_COM ");
{COMMENT} printf("COMMENT " );
{NULL} printf ("NULL ");
{CONSTANT} printf("CONSTANT ");
{LBRACET} printf("LBRACET ");
{RBRACET} printf("RBRACET ");
{LCURLY} printf("LCURLY ");
{RCURLY} printf("RCURLY ");
{SEMICOLON} printf("SEMICOLON ");
{RETURN} printf("RETURN ");
{NOT_EQUAL} printf("NOT_EQUAL ");
{GEQUAL} printf("GEQUAL ");
{LEQUAL} printf("LEQUAL ");
{OUT} printf("SYSTEM.OUT ");
{VOID} printf("VOID ");
{STATEMENT} printf("STATEMENT ");
{BOOLEAN} printf("BOOLEAN ");
{SUM} printf("PLUS ");
{OR} printf("OR ");
{EQUAL} printf("EQUAL ");
{NEG_SIGN} printf("NEG_SIGN ");
{ASSIGN} printf("ASSIGN ");
{NOT} printf("NOT ");
{IMPLY} printf("IMPLIES ");
{IMPLY_IMPLY} printf("IMPLY AND IMPLY ");
{AND} printf("AND ");
{IF} printf("IF ");
{STRING} printf("<%s> ",yytext);
{WHILE} printf("WHILE ");
{ELSE}    printf("ELSE ");
{IN} printf("SYSTEM.IN ");
{ID} printf("ID<%s> ",yytext);
{DOT} printf("DOT");
.	;
