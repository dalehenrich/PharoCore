
!HostSystemMenusMenuItem class methodsFor: 'instance creation'!
text: aTextItem cmd: aCmd shift: state handler: aHandlerBlock
	| resolvedClassInstance |
	
	resolvedClassInstance := self defaultMenuItem.
	resolvedClassInstance text: aTextItem.
	resolvedClassInstance cmd: aCmd.
	resolvedClassInstance shift: state.
	resolvedClassInstance handler: aHandlerBlock.
	^resolvedClassInstance! !
