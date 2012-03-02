
!CodeLoader class methodsFor: 'CommandLine Handling'!
parseUrl: aCommandLine
	"Load the file specified on the command line"
	| url param |
	
	param := (aCommandLine parameterAt: 1) convertFromSystemString.
	url := Url absoluteFromText: param.
	
	"if its a GenericUrl it must be a file path"
	(url isKindOf: GenericUrl) ifFalse: [ ^ url ].
	
	"if it start with a / it must be an absolute path"
	param first = $/
		ifTrue: [ ^ FileUrl absoluteFromText: param ].
	
	"otherwise we treat it as a path local to the default directory"
	^ FileUrl absoluteFromText: FileDirectory default fullName, '/' , param
	! !
