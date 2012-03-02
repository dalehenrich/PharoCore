
!ThemeIcons class methodsFor: 'private - icons'!
crudeUndoDisabledIcon
	"Private - Generated method"
	^ icons
			at: #'crudeUndoDisabled'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self crudeUndoDisabledIconContents readStream) ].! !
