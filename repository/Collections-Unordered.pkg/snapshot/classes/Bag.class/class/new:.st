
!Bag class methodsFor: 'instance creation'!
new: nElements
	^ super new setContents: (self contentsClass new: nElements)! !
