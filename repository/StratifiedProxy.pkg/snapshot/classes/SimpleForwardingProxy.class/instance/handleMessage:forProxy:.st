
!SimpleForwardingProxy methodsFor: 'message handling'!
handleMessage: aMessage forProxy: proxy

	^ aMessage sendTo: object! !
