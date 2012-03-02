
!DynamicMessageImplementor methodsFor: 'testing'!
isMessageASetter
	
	^ message numArgs = 1 and: [ class instVarNames includes: message selector allButLast ]! !
