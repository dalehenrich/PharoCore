
!TextEditor methodsFor: 'events'!
mouseDown: event 
	"An attempt to break up the old processRedButton code into three phases"
	
	self editingState mouseDown: event from: morph.
		
	self closeTypeIn.
	
	"no matter what, if shift is pressed extend the selection"
	event shiftPressed
		ifTrue: [ ^ self mouseMove: event ].
	
	event yellowButtonPressed 
		ifTrue: [ self yellowButtonDown: event ]
		ifFalse: [ 
			"no right/yellowbutton click just reposoition the cursor"
			self updateSelectionFromEvent: event ].! !
