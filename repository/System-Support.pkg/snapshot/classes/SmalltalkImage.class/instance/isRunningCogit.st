
!SmalltalkImage methodsFor: 'system attribute'!
isRunningCogit
	"Returns true if we're running on the Cog JIT
	 (vmParameterAt: 46 is the size of the machine code zone)"

	self deprecated: 'use Smalltalk vm isRunningCogit instead' on: '17 August 2011' in: 'Pharo1.4'.
	^ self vm isRunningCogit! !
