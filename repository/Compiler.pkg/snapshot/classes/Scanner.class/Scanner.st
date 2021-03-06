
Object subclass: #Scanner
	instanceVariableNames: 'source mark hereChar aheadChar token tokenType currentComment buffer typeTable'
	classVariableNames: 'AllowUnderscoreAsAssignment DoItCharacter'
	poolDictionaries: ''
	category: 'Compiler-Kernel'!

!Scanner commentStamp: '<historical>' prior: 0!
I scan a string or text, picking out Smalltalk syntactic tokens. I look one character ahead. I put each token found into the instance variable, token, and its type (a Symbol) into the variable, tokenType. At the end of the input stream, I pretend to see an endless sequence of special characters called doits.!
