
!HostSystemMenusMenuItem class methodsFor: 'instance creation'!
subMenu: aMenuId menuString: aString 
	| item |
	
	item := self text: aString handler: self nullBlock.
	item mark: aMenuId.
	item cmd: 16r1B asCharacter.
	^item.! !
