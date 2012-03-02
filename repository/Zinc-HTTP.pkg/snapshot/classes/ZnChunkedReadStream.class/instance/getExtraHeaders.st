
!ZnChunkedReadStream methodsFor: 'private'!
getExtraHeaders
	extraHeaders := ZnHeaders readFrom: stream! !
