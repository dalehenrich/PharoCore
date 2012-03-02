
!TextLink methodsFor: 'as yet unclassified'!
analyze: aString

	| list |
	list := super analyze: aString.
	classAndMethod := list at: 1.
	^ list at: 2! !
