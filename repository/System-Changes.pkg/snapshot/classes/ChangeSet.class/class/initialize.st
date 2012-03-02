
!ChangeSet class methodsFor: 'initialization'!
initialize
	"ChangeSet initialize"

	AllChangeSets isNil
		ifTrue: [ AllChangeSets := OrderedCollection new ].
	self gatherChangeSets.
	FileServices registerFileReader: self! !
