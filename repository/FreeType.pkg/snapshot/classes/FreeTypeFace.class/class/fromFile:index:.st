
!FreeTypeFace class methodsFor: 'instance creation'!
fromFile: aFileName index: anInteger
	"share alike instances"
	^FileDirectory splitName: aFileName to: [:dir :fname |
		self rememberFontDir: dir.
		self allInstancesDo: [:inst |
			(inst filename = aFileName and: [inst index = anInteger])
				ifTrue: [^inst "validate"]].
		(self basicNew)
			filename: aFileName;
			index: anInteger;
			yourself]! !
