
!FileStream class methodsFor: '*Network-Protocols'!
post: data target: target url: url ifError: errorBlock
	^self concreteStream new post: data target: target url: url ifError: errorBlock! !
