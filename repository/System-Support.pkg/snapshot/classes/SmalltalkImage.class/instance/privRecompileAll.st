
!SmalltalkImage methodsFor: 'PharoKernel-private'!
privRecompileAll

	Smalltalk allClassesAndTraits do: [:classOrTrait | classOrTrait compileAll ].
! !
