
!Loader methodsFor: 'initialize'!
initialize
	super initialize.
	PackagesBeforeLastLoad ifNil: [ PackagesBeforeLastLoad := Set new ]! !
