
!GB2312 class methodsFor: 'class methods'!
initialize
	"
	GB2312 initialize
"
	compoundTextSequence := String streamContents: 
		[ :stream | 
		stream nextPut: Character escape.
		stream nextPut: $$.
		stream nextPut: $(.
		stream nextPut: $A ]! !
