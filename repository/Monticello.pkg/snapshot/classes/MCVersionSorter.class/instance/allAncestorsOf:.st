
!MCVersionSorter methodsFor: 'as yet unclassified'!
allAncestorsOf: aVersionInfo
	| all |
	all := Set new.
	self addAllAncestorsOf: aVersionInfo to: all.
	^ all! !
