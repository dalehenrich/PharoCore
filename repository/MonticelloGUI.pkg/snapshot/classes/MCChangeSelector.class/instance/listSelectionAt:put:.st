
!MCChangeSelector methodsFor: 'as yet unclassified'!
listSelectionAt: aNumber put: aBoolean
	| item |
	item := self items at: aNumber.
	aBoolean
		ifTrue: [self kept add: item ]
		ifFalse: [self kept remove: item ifAbsent: []]! !
