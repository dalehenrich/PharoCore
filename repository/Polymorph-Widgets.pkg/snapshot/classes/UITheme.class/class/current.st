
!UITheme class methodsFor: 'accessing'!
current
	"Answer the current ui theme."

	^Current ifNil: [Current := PharoTheme newDefault. Current]! !
