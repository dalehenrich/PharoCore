
!CompiledMethodWithNode class methodsFor: 'instance creation'!
generateMethodFromNode: aMethodNode trailer: bytes
	^ self method: (aMethodNode generate: bytes) node: aMethodNode.! !
