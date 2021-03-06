
!ClassBuilder methodsFor: 'private'!
showProgressFor: aClass
	"Announce that we're processing aClass"
	progress == nil ifTrue:[^self].
	aClass isObsolete ifTrue:[^self].
	currentClassIndex := currentClassIndex + 1.
	(aClass hasMethods and: [aClass wantsRecompilationProgressReported]) ifTrue:
		[progress value: ('Recompiling ', aClass name,' (', currentClassIndex printString,'/', maxClassIndex printString,')')]! !
