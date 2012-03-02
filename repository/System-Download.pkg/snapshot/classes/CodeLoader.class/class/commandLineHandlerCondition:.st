
!CodeLoader class methodsFor: 'CommandLine Handling'!
commandLineHandlerCondition: aCommandLine
	"Ensure that:
		- there is a parameter
		- it could be cast to an Url (Ftp, Http or File protocols)"
		
	| url |
	aCommandLine hasParameters ifFalse: [ ^ false ].
	
	"this is completely bogus here..."
	url := Url absoluteFromText: (aCommandLine parameterAt: 1).

	"we got properly specified urls in"
	(#(FileUrl FtpUrl HttpUrl) includes: url class) ifTrue: [ ^ true ].
	
	"if the schemeName is empty assume it is a file path"
	^ (url isKindOf: GenericUrl ) 
		ifTrue: [ url schemeName isNil ]
		ifFalse: [ false ]
	! !
