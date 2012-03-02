
!ThemeIcons class methodsFor: 'private - icons'!
haloPoohIcon
	"Private - Generated method"
	^ icons
			at: #'haloPooh'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self haloPoohIconContents readStream) ].! !
