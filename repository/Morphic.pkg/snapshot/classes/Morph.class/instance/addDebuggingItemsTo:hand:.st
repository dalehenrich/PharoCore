
!Morph methodsFor: 'debug and other'!
addDebuggingItemsTo: aMenu hand: aHandMorph
	aMenu add: 'debug...' translated subMenu:  (self buildDebugMenu: aHandMorph).
	aMenu lastItem icon: self theme smallDebugIcon! !
