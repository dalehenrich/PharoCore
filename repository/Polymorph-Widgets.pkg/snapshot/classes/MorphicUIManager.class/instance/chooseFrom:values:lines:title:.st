
!MorphicUIManager methodsFor: 'ui requests'!
chooseFrom: labelList values: valueList lines: linesArray title: aString
	"Choose an item from the given list. Answer the selected item."
	
	^ self theme  
		chooseIn: self modalMorph
		title: aString
		labels: labelList
		values: valueList
		lines: linesArray! !
