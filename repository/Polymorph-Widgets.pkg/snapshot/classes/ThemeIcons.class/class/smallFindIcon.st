
!ThemeIcons class methodsFor: 'private - icons'!
smallFindIcon
	"Private - Generated method"
	^ icons
			at: #'smallFind'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallFindIconContents readStream) ].! !
