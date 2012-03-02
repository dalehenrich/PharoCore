
!ThemeIcons class methodsFor: 'private - icons'!
backspaceArrowIcon
	"Private - Generated method"
	^icons
			at: #backspaceArrowIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self backspaceArrowIconContents readStream) ].! !
