
!DropListMorph methodsFor: 'as yet unclassified'!
keyStroke: event
	"Pass on to the list."
	
	(self navigationKey: event) ifTrue: [^self].
	self listMorph keyStroke: event ! !
