
!SHTextStyler methodsFor: 'styling'!
style: aText 
	self terminateBackgroundStylingProcess.
	stylingEnabled
		ifTrue: [text := aText copy.
			self privateStyle: text.
			view
				ifNotNil: [view stylerStyled: text]]! !
