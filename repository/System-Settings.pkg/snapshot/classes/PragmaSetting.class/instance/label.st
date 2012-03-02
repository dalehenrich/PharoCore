
!PragmaSetting methodsFor: 'accessing'!
label
	^ label ifNil: [self name] ifNotNil: [label value]! !
