
!ThemeIcons class methodsFor: 'private - icons'!
smallOpenIcon
	"Private - Generated method"
	^ icons
			at: #'smallOpen'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallOpenIconContents readStream) ].! !
