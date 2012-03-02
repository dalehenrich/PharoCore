
!X11Encoding class methodsFor: 'as yet unclassified'!
encoding

	| enc |
	enc := self getEncoding.
	enc ifNil: [ ^ nil ].
	^ enc asLowercase.! !
