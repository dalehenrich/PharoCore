
!PluggableListMorph methodsFor: 'multi-selection'!
multipleSelection

	^ multipleSelection ifNil: [ multipleSelection := self defaultMultipleSelectionValue ]! !
