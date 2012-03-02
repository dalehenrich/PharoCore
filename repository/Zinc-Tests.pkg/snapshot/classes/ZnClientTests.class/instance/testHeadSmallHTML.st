
!ZnClientTests methodsFor: 'testing'!
testHeadSmallHTML
	| client |
	self withServerDo: [
		(client := ZnClient new)
			url: self serverUrl;
			addPath: 'echo';
			head.
		self assert: client isSuccess.
		self assert: client response contentLength > 0.
		self assert: client response hasEntity not.
		client close ]! !
