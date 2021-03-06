
!Trait methodsFor: 'copying'!
duplicateClassWithNewName: aSymbol
	" I am duplicated from Class, and used to duplicate a trait "

	| copysName class newDefinition |

	copysName := aSymbol asSymbol.
	copysName = self name
		ifTrue: [ ^ self ].
	(Smalltalk globals includesKey: copysName)
		ifTrue: [ ^ self error: copysName , ' already exists' ].
	newDefinition := self definition copyReplaceAll: '#' , self name asString with: '#' , copysName asString.
	class := self class evaluatorClass evaluate: newDefinition logged: true.
	
	class copyAllCategoriesFrom: self.
	class class copyAllCategoriesFrom: self class.
	^ class! !
