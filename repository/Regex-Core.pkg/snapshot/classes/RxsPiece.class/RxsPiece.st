
RxsNode subclass: #RxsPiece
	instanceVariableNames: 'atom min max'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxsPiece commentStamp: 'Tbn 11/12/2010 23:14' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
A piece is an atom, possibly optional or repeated a number of times.

Instance variables:
	atom	<RxsCharacter|RxsCharSet|RxsPredicate|RxsRegex|RxsSpecial>
	min		<Integer>
	max	<Integer|nil> nil means infinity!
