
!LIFOQueue methodsFor: 'initialize-release'!
initialize
	| dummy |
	dummy := self newItem.
	dummy next: nil; object: dummy.
	head := dummy.! !
