
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
getItemStyle: aMenuHandle item: aNumber
	^self buildStyle: (self primGetItemStyle: aMenuHandle item: aNumber)
	! !
