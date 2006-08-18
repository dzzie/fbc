
#include once "submod_c.bi"

declare sub test_extdyn( )
declare sub test_extstat( )

''
	init_b( )
	
	test_extdyn( )
	
	test_extstat( )


''
private sub test_extdyn( )
	
	ASSERT( ext_dynarray(1,1) = 1 )

	ASSERT( ext_dynarray(1,2) = 2 )
	
end sub

''
private sub test_extstat( )

	ASSERT( ext_statarray(1,1) = 3 )

	ASSERT( ext_statarray(1,2) = 4 )
	
end sub

