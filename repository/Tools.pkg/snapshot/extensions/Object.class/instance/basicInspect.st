
!Object methodsFor: '*Tools-Inspector'!
basicInspect
	"Create and schedule an Inspector in which the user can examine the 
	receiver's variables. This method should not be overriden."
	^Smalltalk tools basicInspector openOn: self! !
