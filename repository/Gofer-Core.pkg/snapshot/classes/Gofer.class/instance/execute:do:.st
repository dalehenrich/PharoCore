
!Gofer methodsFor: 'private'!
execute: anOperationClass do: aBlock
	| operation result |
	operation := anOperationClass on: self copy.
	aBlock isNil
		ifFalse: [ aBlock value: operation ].
	^ operation execute! !
