
!MouseOverHandler methodsFor: 'initialization'!
initializeTrackedMorphs

	leftMorphs := OrderedCollection new.
	overMorphs := WriteStream on: #().
	enteredMorphs := WriteStream on: #().
	! !
