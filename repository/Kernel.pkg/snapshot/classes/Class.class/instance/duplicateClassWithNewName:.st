
!Class methodsFor: 'copying'!
duplicateClassWithNewName: aSymbol
	| copysName class newDefinition |
	copysName := aSymbol asSymbol.
	copysName = self name
		ifTrue: [ ^ self ].
	(Smalltalk globals includesKey: copysName)
		ifTrue: [ ^ self error: copysName , ' already exists' ].
	newDefinition := self definition copyReplaceAll: '#' , self name asString with: '#' , copysName asString.
	class := self class evaluatorClass evaluate: newDefinition logged: true.
	class class instanceVariableNames: self class instanceVariablesString.
	class copyAllCategoriesFrom: self.
	class class copyAllCategoriesFrom: self class.
	^ class! !
