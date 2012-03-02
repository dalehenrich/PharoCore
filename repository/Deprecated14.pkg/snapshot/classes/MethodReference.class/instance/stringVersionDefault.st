
!MethodReference methodsFor: 'string version'!
stringVersionDefault

	^classSymbol, (classIsMeta ifTrue: [ ' class ' ] ifFalse: [' ']), methodSymbol  ! !
