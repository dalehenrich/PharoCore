
!JPEGReadWriter methodsFor: 'accessing'!
hDCTable
	hDCTable ifNil: [ hDCTable := Array new: HuffmanTableSize ].
	^ hDCTable! !
