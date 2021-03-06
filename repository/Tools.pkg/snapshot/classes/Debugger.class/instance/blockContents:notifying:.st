
!Debugger methodsFor: 'accessing'!
blockContents: aText notifying: aController
	|h result |
	h := self selectedContext activeHome.
	h ifNil: [ 
		self blockNotFoundDialog: self selectedContext method with: aText.
		^false].
		
	(self confirm: 'I will have to revert to the method from\which this block originated.  Is that OK?' withCRs) ifFalse: [^false].
	
	self resetContext: h.
	result := self contents: aText notifying: aController.
	self contentsChanged.
	^result! !
