
!ThemeIcons class methodsFor: 'private - icons'!
confirmIcon
	"Private - Generated method"
	^ icons
			at: #'confirm'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self confirmIconContents readStream) ].! !
