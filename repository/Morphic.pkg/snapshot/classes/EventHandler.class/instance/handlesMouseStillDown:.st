
!EventHandler methodsFor: 'testing'!
handlesMouseStillDown: evt
	^mouseStillDownRecipient notNil and:[mouseStillDownSelector notNil]! !
