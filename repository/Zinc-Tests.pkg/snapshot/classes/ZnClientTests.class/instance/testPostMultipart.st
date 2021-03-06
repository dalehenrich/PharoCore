
!ZnClientTests methodsFor: 'testing'!
testPostMultipart
	| client filename |
	filename := (FileDirectory default / 'testPostMultiPart.txt') fullName.
	FileDirectory default fileNamed: filename do: [ :stream | stream nextPutAll: '0123456789' ].
	self withServerDo: [
		(client := ZnClient new)
			url: self serverUrl;
			addPath: 'echo';
			addPart: (ZnMimePart fieldName: 'username' value: 'john');
			addPart: (ZnMimePart fieldName: 'foo' entity: (ZnEntity text: '123'));
			addPart: (ZnMimePart fieldName: 'file' fileNamed: filename);
			post.
		self assert: client isSuccess.
		self assert: (client contents includesSubString: 'multipart') ].
	FileDirectory default deleteFileNamed: filename! !
