
!MailAddressTokenizer methodsFor: 'tokenizing'!
peekChar
	^text at: pos ifAbsent: [ nil ]! !
