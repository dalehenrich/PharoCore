
!ThemeIcons class methodsFor: 'private - icons'!
smallItalicIcon
	"Private - Generated method"
	^icons
			at: #smallItalicIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallItalicIconContents readStream) ].! !
