
RxsNode subclass: #RxsMessagePredicate
	instanceVariableNames: 'selector negated'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxsMessagePredicate commentStamp: 'Tbn 11/12/2010 23:14' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
A message predicate represents a condition on a character that is tested (at the match time) by sending a unary message to the character expecting a Boolean answer.

Instance variables:
	selector		<Symbol>!
