/* token.h */

typedef enum {
        ID = 256, 
        BOOLTYPE = 259,
        CHARTYPE = 260,
        ELSE = 261,
        FALSE = 262,
        FOR = 263,
        FUNCTION = 264,
        IF = 265,
        INTTYPE = 266,
        PRINT = 267,
        RETURN = 268,
        STRTYPE = 269,
        TRUE = 270,
        VOIDTYPE = 271,
        WHILE = 272,
        LEQ = 273,
        GEQ = 274,
        EQ = 275,
        NEQ = 276,
        AND = 277,
        OR = 278,
        
	ARRAY,
        CHAR,
	STR,
        NUM,
        ERROR

} token_t; 

