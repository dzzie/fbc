

#define VARIANT_NOASSIGNMENT
#include once "variant.bi"
#include once "intern.bi"

VAR_GEN_BOP( +, VarAdd, integer, I4 )
VAR_GEN_BOP( +, VarAdd, uinteger, UI4 )
VAR_GEN_BOP( +, VarAdd, longint, I8 )
VAR_GEN_BOP( +, VarAdd, ulongint, UI8 )
VAR_GEN_BOP( +, VarAdd, single, R4 )
VAR_GEN_BOP( +, VarAdd, double, R8 )

'':::::
operator + _
	( _
		byref lhs as VARIANT, _
		byref rhs as VARIANT _
	) as VARIANT
	
	dim as VARIANT res = any
	
	VarAdd( @lhs, @rhs, @res )
	
	operator = res
	
end operator

'':::::
operator + _
	( _
		byref lhs as VARIANT, _
		byval rhs as zstring ptr _
	) as VARIANT
	
	dim as VARIANT tmp = any, res = any
	
	VariantInit( @tmp )
	V_VT(@tmp) = VT_BSTR
	V_BSTR(@tmp) = SysAllocStringByteLen( rhs, len( *rhs ) )
	
	VarAdd( @lhs, @tmp, @res )
	
	operator = res
	
	VariantClear( @tmp )
	
end operator

'':::::
operator + _
	( _
		byref lhs as VARIANT, _
		byval rhs as wstring ptr _
	) as VARIANT
	
	dim as VARIANT tmp = any, res = any
	
	VariantInit( @tmp )
	V_VT(@tmp) = VT_BSTR
	V_BSTR(@tmp) = SysAllocStringLen( rhs, len( *rhs ) )
	
	VarAdd( @lhs, @tmp, @res )
	
	operator = res
	
	VariantClear( @tmp )
	
end operator

