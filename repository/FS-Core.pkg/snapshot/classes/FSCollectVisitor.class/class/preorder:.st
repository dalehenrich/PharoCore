
!FSCollectVisitor class methodsFor: 'instance creation'!
preorder: aReference
	^ self preorder: aReference collect: [:entry | entry]! !
