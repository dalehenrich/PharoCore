
!TPureBehavior methodsFor: 'testing method dictionary'!
thoroughHasSelectorReferringTo: literal special: specialFlag byte: specialByte
	"Answer true if any of my methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "

	
	self methodsDo: [ :method |
		((method hasLiteralThorough: literal) or: [specialFlag and: [method scanFor: specialByte]])
			ifTrue: [^true]].
	^false! !
