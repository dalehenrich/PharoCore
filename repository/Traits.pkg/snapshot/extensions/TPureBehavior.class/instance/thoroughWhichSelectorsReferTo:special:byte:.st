
!TPureBehavior methodsFor: 'testing method dictionary'!
thoroughWhichSelectorsReferTo: literal special: specialFlag byte: specialByte
	"Answer a set of selectors whose methods access the argument as a 
	literal. Dives into the compact literal notation, making it slow but 
	thorough "

	| selectors |
	selectors := IdentitySet new.
	self selectorsAndMethodsDo: [:sel :method |
		((method hasLiteralThorough: literal) or: [specialFlag and: [method scanFor: specialByte]])
			ifTrue: [selectors add: sel]].
	^ selectors! !
