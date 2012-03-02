
!SmalltalkImage methodsFor: 'miscellaneous'!
logError: errMsg inContext: aContext

	" we should think about integrating a toothpick here someday"

	self logDuring: [:logger |
		
		[
			FileStream stderr converter installLineEndConvention: String crlf.
		
			FileStream stderr
				wantsLineEndConversion: true;
				nextPut: Character escape; nextPutAll: '[31m';
				nextPutAll: errMsg; cr;
				nextPut: Character escape; nextPutAll: '[33m';
				nextPutAll: aContext shortStack;
				nextPut: Character escape; nextPutAll: '[0m'.
		] on: Error do: [ "we don't want crap out , due to failure of stderr stream " ].
	
		logger	
			nextPutAll: 'THERE_BE_DRAGONS_HERE'; cr; 
		  	nextPutAll: errMsg; cr.
		
			aContext errorReportOn: logger.
	
		" write some type of separator"
		logger nextPutAll: (String new: 60 withAll: $- ); cr; cr.
	]! !
