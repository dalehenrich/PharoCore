
!MailMessage methodsFor: 'accessing'!
subject

		^(self fieldNamed: 'subject' ifAbsent: [ ^'' ])  mainValue! !
