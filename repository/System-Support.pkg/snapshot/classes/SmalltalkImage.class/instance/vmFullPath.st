
!SmalltalkImage methodsFor: 'system attribute'!
vmFullPath
	"Return the full vm path as a string"
	"Ex: '/Applications/Squeak/Squeak 4.2.5beta1U.app/Contents/MacOS/Squeak VM Opt'"
	"SmalltalkImage current vmFullPath"

	^self vm getSystemAttribute: 0! !
