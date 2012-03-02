
!TestRunner methodsFor: 'history saving'!
previousRun

	^ previousRun ifNil: [ previousRun := OrderedCollection new ]! !
