
!ZnUrl methodsFor: 'private'!
encode: string on: stream
	stream nextPutAll: string encodeForHTTP 
! !
