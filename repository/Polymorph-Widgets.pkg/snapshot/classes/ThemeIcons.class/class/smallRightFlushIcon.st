
!ThemeIcons class methodsFor: 'private - icons'!
smallRightFlushIcon
	"Private - Generated method"
	^ icons
			at: #'smallRightFlush'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallRightFlushIconContents readStream) ].! !
