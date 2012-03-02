
!CommandLineUIManager methodsFor: 'ui requests'!
logColored: anAnsiiColorCode during: aBlock
	|stderr|
	
	stderr := self stderr.
	stderr
		nextPut: Character escape; 
		nextPut: $[; nextPutAll: anAnsiiColorCode; nextPut: $m.
		
	aBlock value: self stderr.
		
	stderr nextPut: Character escape; nextPutAll: '[0m'! !
