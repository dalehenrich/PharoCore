
!ThemeIcons class methodsFor: 'private - icons'!
imageIcon
	"Private - Generated method"
	^ icons
			at: #'image'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self imageIconContents readStream) ].! !
