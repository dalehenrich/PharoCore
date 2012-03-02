
!HostSystemMenusMenuItem class methodsFor: 'instance creation'!
text: aTextItem cmd: aCmd handler: aHandlerBlock
	| resolvedClassInstance |
	
	resolvedClassInstance := self defaultMenuItem.
	resolvedClassInstance text: aTextItem.
	resolvedClassInstance cmd: aCmd.
	resolvedClassInstance handler: aHandlerBlock.
	^resolvedClassInstance! !
