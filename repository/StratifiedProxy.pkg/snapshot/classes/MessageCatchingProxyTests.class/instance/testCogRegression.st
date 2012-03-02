
!MessageCatchingProxyTests methodsFor: 'as yet unclassified'!
testCogRegression
	"Cog did not support yet the cannotInterpret: message."
	| pt |
	pt := SimpleForwardingProxy for: 1@2.
	self assert: (pt x = 1).
	self assert: (pt y = 2).! !
