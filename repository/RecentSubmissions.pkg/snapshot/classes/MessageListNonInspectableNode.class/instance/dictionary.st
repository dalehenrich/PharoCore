
!MessageListNonInspectableNode methodsFor: 'accessing'!
dictionary

	dictionary ifNil: [
		self parentNode isNil
			ifTrue:  [
				self model level = 2
					ifTrue: [dictionary := self model dictionary].
				self model level = 3
					ifTrue:[dictionary := self model dictionary at: self item]]
			ifFalse: [dictionary := self model dictionary at: (self parentNode item)]].
	^dictionary! !
