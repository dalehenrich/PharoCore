
!MultiDisplayScanner methodsFor: 'stop conditions'!
setStopConditions
	"Set the font and the stop conditions for the current run."
	
	self setFont.
	self setConditionArray: (alignment = Justified ifTrue: [#paddedSpace]).

"
	alignment = Justified ifTrue: [
		stopConditions == DefaultStopConditions 
			ifTrue:[stopConditions := stopConditions copy].
		stopConditions at: Space asciiValue + 1 put: #paddedSpace]
"! !