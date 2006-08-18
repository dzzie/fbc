

#define CAT(a,b) a##b

#define SEQ_SIZE(seq) CAT(SEQ_SIZE_, SEQ_SIZE_0 seq)

#define SEQ_SIZE_0(__) SEQ_SIZE_1
#define SEQ_SIZE_1(__) SEQ_SIZE_2
#define SEQ_SIZE_2(__) SEQ_SIZE_3
#define SEQ_SIZE_3(__) SEQ_SIZE_4
#define SEQ_SIZE_4(__) SEQ_SIZE_5
#define SEQ_SIZE_5(__) SEQ_SIZE_6
#define SEQ_SIZE_6(__) SEQ_SIZE_7
#define SEQ_SIZE_7(__) SEQ_SIZE_8
#define SEQ_SIZE_8(__) SEQ_SIZE_9
#define SEQ_SIZE_9(__) SEQ_SIZE_10
#define SEQ_SIZE_10(__) SEQ_SIZE_11

#define SEQ_SIZE_SEQ_SIZE_0 0
#define SEQ_SIZE_SEQ_SIZE_1 1
#define SEQ_SIZE_SEQ_SIZE_2 2
#define SEQ_SIZE_SEQ_SIZE_3 3
#define SEQ_SIZE_SEQ_SIZE_4 4
#define SEQ_SIZE_SEQ_SIZE_5 5
#define SEQ_SIZE_SEQ_SIZE_6 6
#define SEQ_SIZE_SEQ_SIZE_7 7
#define SEQ_SIZE_SEQ_SIZE_8 8
#define SEQ_SIZE_SEQ_SIZE_9 9
#define SEQ_SIZE_SEQ_SIZE_10 10


	assert( SEQ_SIZE( (a) ) = 1 )
	assert( SEQ_SIZE( (a)(b) ) = 2 )
	assert( SEQ_SIZE( (a)(b)(c) ) = 3 )
	assert( SEQ_SIZE( (a)(b)(c)(d) ) = 4 )
	assert( SEQ_SIZE( (a)(b)(c)(d)(e) ) = 5 )
	assert( SEQ_SIZE( (a)(b)(c)(d)(e)(f) ) = 6 )
	assert( SEQ_SIZE( (a)(b)(c)(d)(e)(f)(g) ) = 7 )
	assert( SEQ_SIZE( (a)(b)(c)(d)(e)(f)(g)(h) ) = 8 )
	assert( SEQ_SIZE( (a)(b)(c)(d)(e)(f)(g)(h)(i) ) = 9 )
