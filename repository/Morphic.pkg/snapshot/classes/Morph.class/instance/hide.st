
!Morph methodsFor: 'drawing'!
hide
	owner ifNil: [^ self].
	self visible ifTrue: [self visible: false.  self changed]! !
