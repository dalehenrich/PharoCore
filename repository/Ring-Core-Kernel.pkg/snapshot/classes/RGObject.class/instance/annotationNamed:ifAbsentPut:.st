
!RGObject methodsFor: 'annotations'!
annotationNamed: annotationName ifAbsentPut: blockValue 

	^self annotations
		at: annotationName
		ifAbsentPut: blockValue! !
