
RxmLink subclass: #RxmPredicate
	instanceVariableNames: 'predicate'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxmPredicate commentStamp: 'Tbn 11/12/2010 23:14' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
Instance holds onto a one-argument block and matches exactly one character if the block evaluates to true when passed the character as the argument.

Instance variables:
	predicate		<BlockClosure>!
