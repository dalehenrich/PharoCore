
!PasteUpMorph methodsFor: 'world menu'!
makeAScreenshot
	| filePrefix |
	filePrefix :=  'PharoScreenshot'.
	(UIManager default
		chooseFrom: {'The entire world' translated. 'A selected area' translated}
		values: #(#world #area )
		message: 'What do you want to shoot ?' translated
		title: 'Make a screenshot')
		ifNotNil: [:choice | choice = #world
				ifTrue: [PNGReadWriter
						putForm: World imageForm
						onFileNamed: (FileDirectory default nextNameFor: filePrefix extension: 'png')]
				ifFalse: [PNGReadWriter
						putForm: Form fromUser
						onFileNamed: (FileDirectory default nextNameFor: filePrefix extension: 'png')]]! !
