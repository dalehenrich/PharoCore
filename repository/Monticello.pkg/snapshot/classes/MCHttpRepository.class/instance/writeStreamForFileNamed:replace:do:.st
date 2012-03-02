
!MCHttpRepository methodsFor: 'i/o'!
writeStreamForFileNamed: aString replace: ignoreBoolean do: aBlock
	| stream entity |
	stream := RWBinaryOrTextStream on: String new.
	aBlock value: stream.
	stream reset.
	(entity := ZnStreamingEntity type: ZnMimeType applicationOctetStream)
		stream: stream;
		contentLength: stream size.
	self displayProgress: 'Uploading ', aString during: [
		ZnClient new
			systemPolicy;
			beOneShot;
			signalProgress: true;
			username: self user password: self password;
			entity: entity;
			url: (self urlForFileNamed: aString);
			put ]! !
