
!ThemeIcons class methodsFor: 'private - icons'!
downArrowIcon
	"Private - Generated method"
	^icons
			at: #downArrowIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self downArrowIconContents readStream) ].! !
