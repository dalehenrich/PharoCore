
!SyntaxError methodsFor: 'initialization'!
checkForUnprintableCharacters: aString
	
	| types printables badChar |
	
	types := String typeTable.	
	printables := '!!@#$%&*-_=+<>{}?/\,¬∑¬£¬¢¬ß¬∂¬™¬∫¬ñ¬ó¬ì¬ë¬î¬í¬Ö√ö√¶√ö¬Ø√ó¬ø¬´¬ª`~`' asSet.