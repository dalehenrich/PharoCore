
!ThemeIcons class methodsFor: 'private - icons'!
crudeRedoIcon
	"Private - Generated method"
	^ icons
			at: #'crudeRedo'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self crudeRedoIconContents readStream) ].! !
