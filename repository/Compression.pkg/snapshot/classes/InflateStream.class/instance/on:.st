
!InflateStream methodsFor: 'initialize'!
on: aCollectionOrStream
	aCollectionOrStream isStream 
		ifTrue:[	aCollectionOrStream binary.
				sourceStream := aCollectionOrStream.
				self getFirstBuffer]
		ifFalse:[source := aCollectionOrStream].
	^self on: source from: 1 to: source size.! !