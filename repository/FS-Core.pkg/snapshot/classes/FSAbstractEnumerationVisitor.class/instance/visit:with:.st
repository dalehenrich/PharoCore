
!FSAbstractEnumerationVisitor methodsFor: 'as yet unclassified'!
visit: aReference with: aGuide
	out := (Array new: 10) writeStream.
	aGuide show: aReference.
	^ out contents! !
