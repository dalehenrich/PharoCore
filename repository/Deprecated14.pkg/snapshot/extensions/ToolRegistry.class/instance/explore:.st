
!ToolRegistry methodsFor: '*deprecated14'!
explore: anObject
	"Open an explorer on the given object."
	self deprecated: 'Use Smalltalk tools objectExplorer openOn: ... instead' on: '22 January 2012' in: 'Pharo1.4'.

	self objectExplorer openOn: anObject
! !
