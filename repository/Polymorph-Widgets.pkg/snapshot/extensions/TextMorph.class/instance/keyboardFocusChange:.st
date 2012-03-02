
!TextMorph methodsFor: '*Polymorph-Widgets-override'!
keyboardFocusChange: aBoolean 	
	| w ptm |	
	paragraph isNil ifFalse:[paragraph focused: aBoolean].	
	aBoolean 
		ifTrue:["A hand is wanting to send us characters..."
			self hasFocus ifFalse: [self editor	"Forces install"].
			Editor blinkingCursor 
				ifTrue: [self startBlinking].
			self showOverEditableTextCursor] 
		ifFalse:["A hand has clicked elsewhere..."		
			(w := self world) 
				ifNotNil:[w handsDo: [:h | h keyboardFocus == self ifTrue: [^self]].
					"Release control unless some hand is still holding on"			
					self releaseEditor].
			self hideOverEditableTextCursor.
			self stopBlinking].
	self focusChanged! !
