
!MessageSend methodsFor: 'evaluating'!
value: anObject

	^ receiver 
		perform: selector 
		with: anObject! !
