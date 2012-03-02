
!UrlCodeFileLoader methodsFor: 'initialize/release'!
initialize
	super initialize.
	requests := SharedQueue new.
	downloads := OrderedCollection new! !
