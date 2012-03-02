
!Behavior methodsFor: 'queries'!
copiedFromSuperclass: method
	"Returns the methods that the receiver copied with its ancestors"
	
	self allSuperclassesDo: [ :cls|
		(cls includesSelector: method selector)
			ifTrue: [ 
				((cls >> method selector) getSource  = method getSource)
					ifTrue: [ ^ {cls >> method selector}]
					ifFalse: [ ^ #()]]].
	^ #().
	! !
