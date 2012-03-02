
!GoferWorking methodsFor: 'initialization'!
initializeOn: aGofer
	super initializeOn: aGofer.
	aGofer references 
		do: [ :each | self addReference: each ]! !
