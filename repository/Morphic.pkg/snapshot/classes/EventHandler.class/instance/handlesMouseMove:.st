
!EventHandler methodsFor: 'testing'!
handlesMouseMove: evt
	^mouseMoveRecipient notNil and:[mouseMoveSelector notNil]! !
