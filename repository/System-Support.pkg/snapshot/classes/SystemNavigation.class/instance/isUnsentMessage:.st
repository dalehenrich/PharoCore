
!SystemNavigation methodsFor: 'message sends'!
isUnsentMessage: selector

	| special byte |
	special := Smalltalk 
				hasSpecialSelector: selector
				ifTrueSetByte: [ :b | byte := b ].
	self allBehaviorsDo: 
		[ :behavior | 
			(behavior 
				thoroughHasSelectorReferringTo: selector
				special: special
				byte: byte) ifTrue: [^false] ].
	^true! !
