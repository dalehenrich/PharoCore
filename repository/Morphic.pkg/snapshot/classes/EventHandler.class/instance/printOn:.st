
!EventHandler methodsFor: 'printing'!
printOn: aStream 
	| recipients |
	super printOn: aStream.
	#('mouseDownSelector' 'mouseStillDownSelector' 'mouseUpSelector' 'mouseEnterSelector' 'mouseLeaveSelector' 'mouseEnterDraggingSelector' 'mouseLeaveDraggingSelector' 'doubleClickSelector' 'keyStrokeSelector') 
		do: 
			[:aName | | aVal | 
			(aVal := self instVarNamed: aName) notNil 
				ifTrue: [aStream nextPutAll: '; ' , aName , '=' , aVal]].
	(recipients := self allRecipients) notEmpty 
		ifTrue: 
			[aStream nextPutAll: ' recipients: '.
			recipients printOn: aStream]! !
