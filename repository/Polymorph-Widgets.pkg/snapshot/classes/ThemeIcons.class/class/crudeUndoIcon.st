
!ThemeIcons class methodsFor: 'private - icons'!
crudeUndoIcon
	"Private - Generated method"
	^ icons
			at: #'crudeUndo'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self crudeUndoIconContents readStream) ].! !
