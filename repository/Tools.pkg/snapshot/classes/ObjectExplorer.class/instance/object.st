
!ObjectExplorer methodsFor: 'accessing'!
object
	^currentSelection ifNotNil: [ :cs | cs withoutListWrapper ]! !
