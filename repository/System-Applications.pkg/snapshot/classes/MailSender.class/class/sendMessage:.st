
!MailSender class methodsFor: 'communication'!
sendMessage: aMailMessage

	self default ifNotNil: [self default sendMailMessage: aMailMessage]! !
