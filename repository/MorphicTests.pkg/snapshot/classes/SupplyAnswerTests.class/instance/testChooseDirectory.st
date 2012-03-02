
!SupplyAnswerTests methodsFor: 'as yet unclassified'!
testChooseDirectory

	| tmpDirectory answer |
	tmpDirectory := FileDirectory on: '/tmp'.
	
	answer := ([ MorphicUIManager new chooseDirectory ] valueSupplyingAnswer: { 'Choose Directory'. tmpDirectory }).
	
	self assert: answer = tmpDirectory.! !
