
!EditableDropListMorph methodsFor: 'as yet unclassified'!
enabled: aBoolean
	"Set the value of enabled"
	
	super enabled: aBoolean.
	self
		contentMorph enabled: aBoolean;
		fillStyle: Color transparent ! !
