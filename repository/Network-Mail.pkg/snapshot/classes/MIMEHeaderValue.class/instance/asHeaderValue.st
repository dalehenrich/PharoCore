
!MIMEHeaderValue methodsFor: 'printing'!
asHeaderValue
	| strm |
	strm := (String new: 20) writeStream.
	strm nextPutAll: mainValue.
	parameters associationsDo: [:e | strm nextPut: $; ; nextPutAll: e key;
		 nextPutAll: '="';
		 nextPutAll: e value , '"'].
	^ strm contents! !