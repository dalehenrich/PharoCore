
!ZnClientTests methodsFor: 'testing'!
testTimeout
	self withServerDo: [ 
		self 
			should: [ 
				ZnClient new 
					timeout: 1; 
					url: self serverUrl;
					addPath: 'echo';
					queryAt: 'delay' put: '2'; 
					get ]
			raise: ConnectionTimedOut ]! !
