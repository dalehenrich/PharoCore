
!SystemNavigation methodsFor: '*Tools-Browser'!
browseUndeclaredReferences
	"SystemNavigation default browseUndeclaredReferences"
	
	Undeclared removeUnreferencedKeys.
	Undeclared keysAndValuesDo: [ :k :v |
		self
			browseMessageList: (self allReferencesTo: v)
			name: 'References to Undeclared: ', k printString ]! !
