
!ThemeIcons class methodsFor: 'private - icons'!
smallJumpIcon
	"Private - Generated method"
	^ icons
			at: #'smallJump'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallJumpIconContents readStream) ].! !
