
!ScrollPane methodsFor: '*Polymorph-Widgets'!
mouseWheel: event 
	"Handle a mouseWheel event."
	
	event direction = #up ifTrue: [
		scrollBar scrollUp: 3].
	event direction = #down ifTrue: [
		scrollBar scrollDown: 3]! !
