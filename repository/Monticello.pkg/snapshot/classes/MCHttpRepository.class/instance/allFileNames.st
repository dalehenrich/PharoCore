
!MCHttpRepository methodsFor: 'actions'!
allFileNames
	| index |
	self displayProgress: 'Updating ', self description during: [
		index := ZnClient new
			systemPolicy;
			beOneShot;
			signalProgress: true;
			accept: ZnMimeType text;
			ifFail: [ :exception | self error: 'Could not access ', location, ': ', exception printString ];
			url: self locationWithTrailingSlash;
			queryAt: 'C' put: 'M;O=D';
			username: self user password: self password;
			get ].
	^ self parseFileNamesFromStream: index readStream! !
