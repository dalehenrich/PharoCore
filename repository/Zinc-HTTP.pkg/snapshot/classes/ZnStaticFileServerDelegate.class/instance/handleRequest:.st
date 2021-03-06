
!ZnStaticFileServerDelegate methodsFor: 'public'!
handleRequest: request
	"Server delegate entry point"
	
	| actualFilename |
	(#(GET HEAD) includes: request method) 
		ifFalse: [ ^ ZnResponse methodNotAllowed: request ].
	actualFilename := self actualFilenameFor: request uri.
	^ actualFilename notNil
		ifTrue: [ 
			(self redirectNeededFor: request uri actualFilename: actualFilename)
				ifTrue: [ self directoryRedirectFor: request uri ]    
				ifFalse: [ self responseForFile: actualFilename ] ] 
		ifFalse: [ ZnResponse notFound: request uri ]! !
