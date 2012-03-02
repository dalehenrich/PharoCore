
!RxsPredicate methodsFor: 'private'!
negate

	| tmp |
	tmp := predicate.
	predicate := negation.
	negation := tmp! !
