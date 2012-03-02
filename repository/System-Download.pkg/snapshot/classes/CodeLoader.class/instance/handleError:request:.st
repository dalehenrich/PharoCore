
!CodeLoader methodsFor: 'installing'!
handleError: error request: aUrlDownloadRequest
	"Print a header before failing on an errro / syntax notification from the the script loaded by the given request"
	|stderr|
	
	"spit out a warning if in headless mode, otherwise a debugger will popup"
	Smalltalk isHeadless 
		ifTrue: [ self inform: 'Errors in script loaded from ', aUrlDownloadRequest url asString].
																														
	(error isKindOf: SyntaxErrorNotification)
		"for syntax errors we can used the default action"
		ifTrue: [ error defaultAction ]
		"otherwise resignal it"
		ifFalse: [ error pass ]! !
