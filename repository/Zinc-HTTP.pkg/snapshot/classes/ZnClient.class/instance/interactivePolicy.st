
!ZnClient methodsFor: 'initialize-release'!
interactivePolicy
	self 
		beOneShot;
		ifFail: [ :exception | 
			self inform: 'HTTP call failed with ', exception printString.
			nil ]! !
