
!ChangeSet methodsFor: 'method changes'!
messageListForChangesWhich: aBlock ifNone: ifEmptyBlock

	| answer |
	answer := self changedMessageList select: [ :each |
		aBlock value: each actualClass value: each selector ].
	answer isEmpty ifTrue: [^ifEmptyBlock value].
	^answer
! !
