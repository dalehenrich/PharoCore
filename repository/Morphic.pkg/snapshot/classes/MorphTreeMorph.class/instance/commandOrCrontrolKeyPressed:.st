
!MorphTreeMorph methodsFor: 'events-processing'!
commandOrCrontrolKeyPressed: anEvent
	^ (OSPlatform current platformFamily ~= #MacOSX) 
		ifTrue: [anEvent controlKeyPressed]
		ifFalse: [anEvent commandKeyPressed]! !
