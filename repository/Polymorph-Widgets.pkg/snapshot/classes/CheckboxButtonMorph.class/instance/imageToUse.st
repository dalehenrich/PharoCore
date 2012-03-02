
!CheckboxButtonMorph methodsFor: 'as yet unclassified'!
imageToUse
	"Answer the image we should use."

	^state caseOf: {
		[#off] -> [self offImage].
		[#pressed] -> [self pressedImage].
		[#on] -> [self onImage].
		[#repressed] -> [self repressedImage ifNil: [self onImage]]}
		otherwise: []! !
