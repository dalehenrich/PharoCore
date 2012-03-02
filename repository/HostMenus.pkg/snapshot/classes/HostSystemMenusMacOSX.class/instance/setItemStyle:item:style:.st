
!HostSystemMenusMacOSX methodsFor: 'accessing-menus'!
setItemStyle: menuHandleOop item: anInteger style: aStyle
	| styleInteger |
	
	styleInteger := self resolveStyleInteger: aStyle.
	self primSetItemStyle: menuHandleOop item: anInteger styleParameter: styleInteger
	
! !
