
Object subclass: #RxMatchOptimizer
	instanceVariableNames: 'ignoreCase prefixes nonPrefixes conditions testBlock methodPredicates nonMethodPredicates predicates nonPredicates'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Regex-Core'!

!RxMatchOptimizer commentStamp: 'Tbn 11/12/2010 23:13' prior: 0!
-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
--
A match start optimizer, handy for searching a string. Takes a regex syntax tree and sets itself up so that prefix characters or matcher states that cannot start a match are later recognized with #canStartMatch:in: method.

Used by RxMatcher, but can be used by other matchers (if implemented) as well.!