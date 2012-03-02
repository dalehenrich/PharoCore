
Url subclass: #GenericUrl
	instanceVariableNames: 'schemeName locator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Network-Url'!

!GenericUrl commentStamp: '<historical>' prior: 0!
a URL type that can't be broken down in any systematic way.  For example, mailto: and telnet: URLs.  The part after the scheme name is stored available via the #locator message.!
