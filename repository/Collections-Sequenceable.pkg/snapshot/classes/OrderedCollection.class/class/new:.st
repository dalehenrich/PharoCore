
!OrderedCollection class methodsFor: 'instance creation'!
new: anInteger 
	^ self basicNew setCollection: (self arrayType new: anInteger)! !
