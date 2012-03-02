
!CodeLoader methodsFor: 'installing'!
printSyntaxNotification: aSyntaxErrorNotification request: aUrlDownloadRequest
	"Print the syntax notification on the command line"
	
	"TODO: this should use most probably NonInteractiveTranscript"
	FileStream stderr converter installLineEndConvention: String crlf.
	FileStream stderr
		wantsLineEndConversion: true;
		nextPut: Character escape; nextPutAll: '[31m';
		nextPutAll: 'Errors in script loaded from ';
		nextPutAll: aUrlDownloadRequest url; 
		nextPut: Character escape; nextPutAll: '[0m'; cr.! !
