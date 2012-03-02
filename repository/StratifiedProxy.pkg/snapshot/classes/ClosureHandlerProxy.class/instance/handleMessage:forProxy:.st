
!ClosureHandlerProxy methodsFor: 'as yet unclassified'!
handleMessage: aMessage forProxy: proxy

	^ closure value: aMessage value: proxy! !
