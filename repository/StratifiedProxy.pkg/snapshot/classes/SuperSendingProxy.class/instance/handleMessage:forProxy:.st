
!SuperSendingProxy methodsFor: 'message handling'!
handleMessage: aMessage forProxy: proxy

	"lookup for a method in object's class. 
	if it found, do a message send using the superclass of the class where method found,
	otherwise do a normal send. "
	
	| implementor |
	
	implementor := object class lookupSelector: aMessage selector.
	aMessage lookupClass: (implementor ifNotNil: [ implementor methodClass superclass ]).
	 
	^ aMessage sentTo: object ! !
