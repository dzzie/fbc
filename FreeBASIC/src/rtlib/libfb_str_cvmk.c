/*
 *  libfb - FreeBASIC's runtime library
 *	Copyright (C) 2004-2005 Andre Victor T. Vicentini (av1ctor@yahoo.com.br)
 *
 *  This library is free software; you can redistribute it and/or
 *  modify it under the terms of the GNU Lesser General Public
 *  License as published by the Free Software Foundation; either
 *  version 2.1 of the License, or (at your option) any later version.
 *
 *  This library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *  Lesser General Public License for more details.
 *
 *  You should have received a copy of the GNU Lesser General Public
 *  License along with this library; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

/*
 * str_cvmk.c -- CV# and MK#$ routines
 *
 * chng: oct/2004 written [v1ctor]
 *
 */

#include <malloc.h>
#include "fb.h"


/*:::::*/
FBCALL double fb_CVD ( FBSTRING *str )
{
    int		i, len;
    double 	num = 0.0;

	if( str == NULL )
		return 0.0;

	len = FB_STRSIZE( str );

	num = 0.0;
	if( (str->data != NULL) && (len == sizeof( double )) )
	{
		for( i = 0; i < len; i++ )
			((char *)&num)[i] = str->data[i];
	}

	/* del if temp */
	fb_hStrDelTemp( str );

	return num;
}

/*:::::*/
FBCALL float fb_CVS ( FBSTRING *str )
{
    int		i, len;
    float 	num = 0.0;

	if( str == NULL )
		return 0.0;

	len = FB_STRSIZE( str );

	num = 0.0;
	if( (str->data != NULL) && (len == sizeof( float )) )
	{
		for( i = 0; i < len; i++ )
			((char *)&num)[i] = str->data[i];
	}

	/* del if temp */
	fb_hStrDelTemp( str );

	return num;
}


/*:::::*/
FBCALL int fb_CVI ( FBSTRING *str )
{
    int		i, num;

	if( str == NULL )
		return 0;

	num = 0;
	if( (str->data != NULL) && (FB_STRSIZE( str ) == sizeof( int )) )
	{
		for( i = 0; i < sizeof( int ); i++ )
			((char *)&num)[i] = str->data[i];
	}

	/* del if temp */
	fb_hStrDelTemp( str );

	return num;
}


/*:::::*/
FBCALL FBSTRING *fb_MKD ( double num )
{
	FBSTRING 	*dst;
	int			i;

	/* alloc temp string */
	dst = (FBSTRING *)fb_hStrAllocTmpDesc( );
	if( dst != NULL )
	{
		fb_hStrAllocTemp( dst, sizeof( double ) );

		/* convert */
		for( i = 0; i < sizeof( double ); i++ )
			dst->data[i] = ((char *)&num)[i];

		dst->data[sizeof( double )] = '\0';
	}
	else
		dst = &fb_strNullDesc;

	return dst;
}

/*:::::*/
FBCALL FBSTRING *fb_MKI ( int num )
{
	FBSTRING 	*dst;
	int			i;

	/* alloc temp string */
	dst = (FBSTRING *)fb_hStrAllocTmpDesc( );
	if( dst != NULL )
	{
		fb_hStrAllocTemp( dst, sizeof( int ) );

		/* convert */
		for( i = 0; i < sizeof( int ); i++ )
			dst->data[i] = ((char *)&num)[i];

		dst->data[sizeof( int )] = '\0';
	}
	else
		dst = &fb_strNullDesc;

	return dst;
}

/*:::::*/
FBCALL FBSTRING *fb_MKS ( float num )
{
	FBSTRING 	*dst;
	int			i;

	/* alloc temp string */
	dst = (FBSTRING *)fb_hStrAllocTmpDesc( );
	if( dst != NULL )
	{
		fb_hStrAllocTemp( dst, sizeof( float ) );

		/* convert */
		for( i = 0; i < sizeof( float ); i++ )
			dst->data[i] = ((char *)&num)[i];

		dst->data[sizeof( float )] = '\0';
	}
	else
		dst = &fb_strNullDesc;

	return dst;
}

