
RxmLink subclass: #RxmSubstring
	instanceVariableNames: 'sample compare'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxmSubstring commentStamp: 'Tbn 11/12/2010 23:14' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
Instance holds onto a string and matches exactly this string, and exactly once.

Instance variables:
	string 	<String>!
