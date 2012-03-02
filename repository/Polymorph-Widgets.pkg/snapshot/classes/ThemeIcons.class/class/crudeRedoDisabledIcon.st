
!ThemeIcons class methodsFor: 'private - icons'!
crudeRedoDisabledIcon
	"Private - Generated method"
	^ icons
			at: #'crudeRedoDisabled'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self crudeRedoDisabledIconContents readStream) ].! !
