
!ThemeIcons class methodsFor: 'private - icons'!
smallFontsIcon
	"Private - Generated method"
	^ icons
			at: #'smallFonts'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallFontsIconContents readStream) ].! !
