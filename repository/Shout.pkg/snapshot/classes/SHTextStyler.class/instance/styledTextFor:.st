
!SHTextStyler methodsFor: 'styling'!
styledTextFor: aText 
	| formattedText |
	formattedText := self privateFormat: aText.
	self privateStyle: formattedText.
	^ formattedText! !
