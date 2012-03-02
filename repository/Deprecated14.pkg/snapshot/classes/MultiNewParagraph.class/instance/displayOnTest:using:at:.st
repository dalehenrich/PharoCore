
!MultiNewParagraph methodsFor: 'debug'!
displayOnTest: aCanvas using: displayScanner at: somePosition
	"Send all visible lines to the displayScanner for display"

	| visibleRectangle offset leftInRun line |
	"(presentationText isNil or: [presentationLines isNil]) ifTrue: [
		^ self displayOn: aCanvas using: displayScanner at: somePosition.
	]."
	visibleRectangle := aCanvas clipRect.
	offset := somePosition - positionWhenComposed.
	leftInRun := 0.
	(self lineIndexForPoint: visibleRectangle topLeft)
		to: (self lineIndexForPoint: visibleRectangle bottomRight)
		do: [:i | line := self presentationLines at: i.
			self displaySelectionInLine: line on: aCanvas.
			line first <= line last ifTrue:
				[leftInRun := displayScanner displayLine: line
								offset: offset leftInRun: leftInRun]].
! !
