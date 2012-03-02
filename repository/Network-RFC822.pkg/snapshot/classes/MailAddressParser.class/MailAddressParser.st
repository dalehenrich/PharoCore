
Object subclass: #MailAddressParser
	instanceVariableNames: 'tokens addresses curAddrTokens'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-RFC822'!

!MailAddressParser commentStamp: '<historical>' prior: 0!
Parse mail addresses.  The basic syntax is:

	addressList := MailAddressParser addressesIn: aString

This currently only returns the bare addresses, but it could also return a list of the address "source codes".  For example, if you give it "Joe <joe@foo>, <jane>", it will currently return a list ('joe@foo' 'jane').  It would be nice to also get a list ('Joe <joe@foo>'  '<jane>').!
