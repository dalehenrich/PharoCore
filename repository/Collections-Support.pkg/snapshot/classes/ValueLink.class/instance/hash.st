
!ValueLink methodsFor: 'nil'!
hash
	^self value hash bitXor: nextLink identityHash 
! !
