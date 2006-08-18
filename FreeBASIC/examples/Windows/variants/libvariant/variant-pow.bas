

#define VARIANT_NOASSIGNMENT
#include once "variant.bi"
#include once "intern.bi"

VAR_GEN_BOP( ^, VarPow, integer, I4 )
VAR_GEN_BOP( ^, VarPow, uinteger, UI4 )
VAR_GEN_BOP( ^, VarPow, longint, I8 )
VAR_GEN_BOP( ^, VarPow, ulongint, UI8 )
VAR_GEN_BOP( ^, VarPow, single, R4 )
VAR_GEN_BOP( ^, VarPow, double, R8 )

'':::::
operator ^ _
	( _
		byref lhs as VARIANT, _
		byref rhs as VARIANT _
	) as VARIANT
	
	dim as VARIANT res = any
	
	VarPow( @lhs, @rhs, @res )
	
	operator = res
	
end operator

