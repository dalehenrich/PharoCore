
!ThemeIcons class methodsFor: 'private - icons'!
squeakyMouseIcon
	"Private - Generated method"
	^ icons
			at: #'squeakyMouse'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self squeakyMouseIconContents readStream) ].! !
