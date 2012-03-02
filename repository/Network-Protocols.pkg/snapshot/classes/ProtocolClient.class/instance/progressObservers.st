
!ProtocolClient methodsFor: 'private'!
progressObservers
	progressObservers ifNil: [progressObservers := OrderedCollection new].
	^progressObservers! !
