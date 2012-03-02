
!PseudoClass methodsFor: 'class'!
classPool 
	self exists ifFalse: [^ nil].
	^ self realClass classPool! !
