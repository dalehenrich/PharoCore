
RxsNode subclass: #RxsRange
	instanceVariableNames: 'first last'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxsRange commentStamp: 'Tbn 11/12/2010 23:15' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
I represent a range of characters as appear in character classes such as

	[a-ZA-Z0-9].

I appear in a syntax tree only as an element of RxsCharSet.

Instance Variables:

	first	<Character>
	last	<Character>!
