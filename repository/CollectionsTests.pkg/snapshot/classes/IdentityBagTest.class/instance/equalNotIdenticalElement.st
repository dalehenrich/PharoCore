
!IdentityBagTest methodsFor: 'requirements'!
equalNotIdenticalElement
	^ equalNotIdenticalElement ifNil: [ equalNotIdenticalElement := self elementToCopy copy ]! !
