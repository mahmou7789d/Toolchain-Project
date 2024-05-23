#ifndef _LBIT_MATH_H_		
#define _LBIT_MATH_H_


#define SETBIT(x,y) (x|=(1<<y))
#define CLRBIT(x,y) (x&=~(1<<y))
#define TOGBIT(x,y) (x^=(1<<y))
#define READBIT(x,y) ((x>>y)&1)
#define GET_BIT(x,y) ((x>>y)&1)


#define WRITE_REG(REG, VAL)   ((REG) = (VAL))
#define READ_REG(REG)         ((REG))

#endif
