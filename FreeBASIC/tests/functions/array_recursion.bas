type mytype
	i	as integer
	array(-2 to 2) as integer
end type

'':::::
sub sub1( array() as integer )

	dim i as integer 
	for i = lbound( array ) to ubound( array )
		assert( array(i) = i )
	next

end sub

'':::::
sub sub2( array() as integer )

	sub1 array()
	
end sub

'':::::
sub sub3( array() as mytype )

	sub2 array(0).array()
	
end sub


	dim array1(-2 to 2) as integer
	
	dim i as integer 
	for i = lbound( array1 ) to ubound( array1 )
		array1(i) = i
	next

	sub2 array1()
	
	
	dim array2(0) as mytype
	
	for i = lbound( array2(0).array ) to ubound( array2(0).array )
		array2(0).array(i) = i
	next

	sub3 array2()
	
	sub2 array2(0).array()
