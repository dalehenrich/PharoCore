
!Symbol class methodsFor: 'instance creation'!
findInterned:aString

	self hasInterned:aString ifTrue:[:symbol| ^symbol].
	^nil.! !
