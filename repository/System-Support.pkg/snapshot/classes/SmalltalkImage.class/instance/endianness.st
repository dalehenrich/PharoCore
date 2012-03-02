
!SmalltalkImage methodsFor: 'endian'!
endianness

	EndianCache ifNil: [EndianCache := self calcEndianness].
	^ EndianCache.
! !
