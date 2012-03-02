
RxmLink subclass: #RxmSpecial
	instanceVariableNames: 'matchSelector'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxmSpecial commentStamp: 'Tbn 11/12/2010 23:14' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
A special node that matches a specific matcher state rather than any input character.
The state is either at-beginning-of-line or at-end-of-line.!
