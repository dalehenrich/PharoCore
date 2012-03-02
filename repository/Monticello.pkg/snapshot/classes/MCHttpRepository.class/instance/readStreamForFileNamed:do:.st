
!MCHttpRepository methodsFor: 'i/o'!
readStreamForFileNamed: aString do: aBlock
	| contents |
	self displayProgress: 'Downloading ', aString during: [
		contents := ZnClient new
			systemPolicy;
			beOneShot;
			signalProgress: true;
			username: self user password: self password;
			get: (self urlForFileNamed: aString) ].
	^ aBlock value: contents readStream! !
