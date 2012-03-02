
Object subclass: #ZipEncoderTree
	instanceVariableNames: 'bitLengths codes maxCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Compression-Streams'!

!ZipEncoderTree commentStamp: '<historical>' prior: 0!
ZipEncoderTree represents a huffman tree for encoding ZipStreams.

Instance variables:
	bitLengths	<WordArray>	 - Bit lengths of each generated code
	codes		<WordArray>	 - Codes for each value
	maxCode		<Integer>	- Maximum value with non-zero frequency!
