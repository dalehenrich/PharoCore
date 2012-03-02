
!StartupLoader methodsFor: 'code execution'!
executeAtomicItems: aCollection

	aCollection do: [:item | (self add: item) execute ]! !
