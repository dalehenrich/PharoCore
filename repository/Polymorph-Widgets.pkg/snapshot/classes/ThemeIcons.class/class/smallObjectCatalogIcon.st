
!ThemeIcons class methodsFor: 'private - icons'!
smallObjectCatalogIcon
	"Private - Generated method"
	^ icons
			at: #'smallObjectCatalog'
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self smallObjectCatalogIconContents readStream) ].! !
