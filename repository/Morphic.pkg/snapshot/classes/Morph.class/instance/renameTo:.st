
!Morph methodsFor: 'testing'!
renameTo: aName 
	"Set The morph name."

	self topRendererOrSelf setNameTo: aName.
	^aName! !