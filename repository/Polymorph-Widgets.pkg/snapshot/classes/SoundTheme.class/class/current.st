
!SoundTheme class methodsFor: 'as yet unclassified'!
current
	"Answer the current ui theme."

	^Current ifNil: [Current := NullSoundTheme newDefault. Current]! !
