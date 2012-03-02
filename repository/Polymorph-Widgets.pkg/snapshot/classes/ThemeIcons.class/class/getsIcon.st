
!ThemeIcons class methodsFor: 'private - icons'!
getsIcon
	"Private - Generated method"
	^ icons
			at: #'gets'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self getsIconContents readStream) ].! !
