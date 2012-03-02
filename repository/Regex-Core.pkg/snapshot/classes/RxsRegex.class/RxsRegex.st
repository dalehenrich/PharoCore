
RxsNode subclass: #RxsRegex
	instanceVariableNames: 'branch regex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxsRegex commentStamp: 'Tbn 11/12/2010 23:15' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
The body of a parenthesized thing, or a top-level expression, also an atom.  

Instance variables:
	branch		<RxsBranch>
	regex		<RxsRegex | RxsEpsilon>!
