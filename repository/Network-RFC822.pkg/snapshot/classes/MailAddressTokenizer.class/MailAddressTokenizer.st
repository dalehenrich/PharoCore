
Stream subclass: #MailAddressTokenizer
	instanceVariableNames: 'cachedToken text pos'
	classVariableNames: 'CSNonAtom CSNonSeparators CSParens CSSpecials'
	poolDictionaries: ''
	category: 'Network-RFC822'!

!MailAddressTokenizer commentStamp: '<historical>' prior: 0!
Divides an address into tokens, as specified in RFC 822.  Used by MailAddressParser.!
