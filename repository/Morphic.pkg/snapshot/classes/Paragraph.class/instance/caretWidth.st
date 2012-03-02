
!Paragraph methodsFor: 'access'!
caretWidth
	^ Editor dumbbellCursor		
			ifTrue: [ 2 ]		
			ifFalse: [ 0 ]! !
