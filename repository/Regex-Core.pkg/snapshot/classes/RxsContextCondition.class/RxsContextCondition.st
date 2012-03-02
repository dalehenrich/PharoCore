
RxsNode subclass: #RxsContextCondition
	instanceVariableNames: 'kind'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxsContextCondition commentStamp: 'Tbn 11/12/2010 23:14' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
One of a few special nodes more often representing special state of the match rather than a predicate on a character.  The ugly exception is the #any condition which *is* a predicate on a character.

Instance variables:
	kind		<Selector>!
