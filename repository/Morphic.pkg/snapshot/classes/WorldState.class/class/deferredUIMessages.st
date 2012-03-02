
!WorldState class methodsFor: 'initialization'!
deferredUIMessages

	^DeferredUIMessages ifNil: [DeferredUIMessages := SharedQueue new].
! !
