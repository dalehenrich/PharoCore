
!PragmaMenuBuilder methodsFor: 'initialize-release'!
initialize
	super initialize.
	isGroup := true.
	currentRoot := self.
	pragmaKeywords := OrderedCollection new.
	! !
