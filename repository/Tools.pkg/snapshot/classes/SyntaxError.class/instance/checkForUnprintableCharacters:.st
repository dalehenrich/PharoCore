
!SyntaxError methodsFor: 'initialization'!
checkForUnprintableCharacters: aString
	
	| types printables badChar |
	
	types := String typeTable.	
	printables := '!!@#$%&*-_=+<>{}?/\,¬∑¬£¬¢¬ß¬∂¬™¬∫¬ñ¬ó¬ì¬ë¬î¬í¬Ö√ö√¶√ö¬Ø√ó¬ø¬´¬ª`~`' asSet.	badChar := aString detect: [:aChar | 					(types at: aChar asciiValue ifAbsent: [#xLetter]) == #xBinary and: [					(printables includes: aChar) not]] ifNone: [nil].	^ badChar 		ifNil: [aString]		ifNotNil: [			'<<<This string contains a character (ascii value ', 			badChar asciiValue printString,			') that is not normally used in code>>> ', aString].! !
