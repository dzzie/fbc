'' examples/manual/hardware/lprint.bas
''
'' NOTICE: This file is part of the FreeBASIC Compiler package and can't
''         be included in other distributions without authorization.
''
'' See Also: http://www.freebasic.net/wiki/wikka.php?wakka=KeyPgLprint
'' --------

'' Compile with -lang fblite or qb

'' new-line
LPrint "Hello World!"

'' no new-line
LPrint "Hello"; "World"; "!";
LPrint

'' column separator
LPrint "Hello!", "World!"
LPrint Chr(12)
