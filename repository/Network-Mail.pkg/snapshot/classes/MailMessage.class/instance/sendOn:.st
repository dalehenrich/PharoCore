
!MailMessage methodsFor: 'sending'!
sendOn: serverString 

	SMTPClient deliver: self usingServer: serverString.! !
