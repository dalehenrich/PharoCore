
!ThemeIcons class methodsFor: 'private - icons'!
projectIcon
	"Private - Generated method"
	^ icons
			at: #'project'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self projectIconContents readStream) ].! !
