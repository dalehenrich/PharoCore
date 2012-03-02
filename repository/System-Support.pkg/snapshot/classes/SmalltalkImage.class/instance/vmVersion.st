
!SmalltalkImage methodsFor: 'system attribute'!
vmVersion
	"Answer the version string of the Virtual machine built"

	self deprecated: 'Use Smalltalk vm version instead' on: '17 August 2011' in: '1.4'.
	^ self vm version! !
