
!ObjectExplorer methodsFor: 'error handling'!
doesNotUnderstand: aMessage
	inspector ifNotNil: [ (inspector respondsTo: aMessage selector) ifTrue: [ ^inspector perform: aMessage selector withArguments: aMessage arguments ]].
	^super doesNotUnderstand: aMessage! !
