
!Behavior methodsFor: 'queries'!
copiesMethodsFromSuperclass
	"Checks whether the receiver copied some method from its superclass"

	self methodDict valuesDo: [ :method|
		(self copiesFromSuperclass: method)
			ifTrue: [ ^ true ]].
	^ false! !
