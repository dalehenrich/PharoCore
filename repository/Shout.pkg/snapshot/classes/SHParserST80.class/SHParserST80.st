
Object subclass: #SHParserST80
	instanceVariableNames: 'classOrMetaClass source workspace arguments sourcePosition currentToken currentTokenFirst temporaries instanceVariables errorBlock currentTokenSourcePosition blockDepth bracketDepth ranges environment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Shout-Parsing'!

!SHParserST80 commentStamp: 'StephaneDucasse 11/29/2011 22:27' prior: 0!
I am a Smalltalk method / expression parser supporting syntax highligthing. !
