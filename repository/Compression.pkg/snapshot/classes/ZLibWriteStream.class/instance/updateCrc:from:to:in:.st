
!ZLibWriteStream methodsFor: 'initialization'!
updateCrc: adler from: start to: stop in: aCollection
	"Update crc using the Adler32 checksum technique from RFC1950"
	^self class updateAdler32: adler from:  start to:  stop in: aCollection! !
