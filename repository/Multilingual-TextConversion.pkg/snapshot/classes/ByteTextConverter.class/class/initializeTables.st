
!ByteTextConverter class methodsFor: 'class initialization'!
initializeTables
	"Initialize the mappings to and from unicode."

	| byteToUnicodeSpec |
	byteToUnicodeSpec := self byteToUnicodeSpec.

	byteToUnicode := byteToUnicodeSpec collect: [:charValue |
		Character value: charValue].

	unicodeToByte := Dictionary new.
	"Mind the offset because first 128 characters are not stored into byteToUnicodeSpec"
	byteToUnicodeSpec keysAndValuesDo: [:byteEntry :unicodeEntry |
		unicodeToByte at: unicodeEntry put: (127 + byteEntry) asCharacter]! !
