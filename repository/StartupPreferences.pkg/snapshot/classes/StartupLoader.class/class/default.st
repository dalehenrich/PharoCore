
!StartupLoader class methodsFor: 'instance creation'!
default

	^ UniqueInstance ifNil: [ UniqueInstance := super basicNew initialize ]! !
