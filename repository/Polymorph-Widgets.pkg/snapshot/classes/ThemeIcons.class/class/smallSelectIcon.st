
!ThemeIcons class methodsFor: 'private - icons'!
smallSelectIcon
	"Private - Generated method"
	^ icons
			at: #'smallSelect'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallSelectIconContents readStream) ].! !
