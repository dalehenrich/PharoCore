
!AbstractTool methodsFor: 'class'!
addClassIn: aPackage
	" add a new class in the provided package. A dialog will be opened to let the user set the class definition "

	| classSymbol systemCategory classDefinition |
	classSymbol := #NameOfSubclass.
	systemCategory := aPackage
		ifNil: [ 'Unknown' ].
	classDefinition := 'Object subclass: #' , classSymbol , '
		instanceVariableNames: '''' 
		classVariableNames: ''''
		poolDictionaries: ''''
		category: ''' , systemCategory name , ''''.
	classDefinition := UIManager default 
		multiLineRequest: 'Define class definition:'
		initialAnswer: classDefinition
		answerHeight: 250.
	(classDefinition isNil or: [ classDefinition isEmpty ])
		ifTrue: [ ^ self ].
	self class evaluatorClass evaluate: classDefinition.! !
