
!FSPath class methodsFor: 'private'!
canonicalizeElements: aCollection
	| result |
	result := OrderedCollection new.
	aCollection do: [:element | self addElement: element to: result].
	^ result! !
