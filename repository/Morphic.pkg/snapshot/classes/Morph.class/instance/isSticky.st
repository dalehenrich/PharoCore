
!Morph methodsFor: 'accessing'!
isSticky
	"answer whether the receiver is Sticky"
	extension ifNil: [^ false].
	^ extension sticky! !
