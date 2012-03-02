
!PointerExplorer methodsFor: 'accessing'!
getList
	^Array with: (PointerExplorerWrapper with: rootObject name: rootObject identityHash asString model: self)
! !
