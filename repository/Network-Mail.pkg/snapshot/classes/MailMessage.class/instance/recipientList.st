
!MailMessage methodsFor: 'accessing'!
recipientList

	^ (self to findTokens: $,) collect: [ :e | e trimLeft ]! !
