
!TextEditor methodsFor: 'events'!
mouseMove: evt 
	"Change the selection in response to mouse-down drag"

	self editingState pointBlock: (self paragraph characterBlockAtPoint: (evt cursorPoint)).
	
	self paragraph move: evt for: model controller: self.
			
	self storeSelectionInParagraph! !
