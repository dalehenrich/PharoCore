
!SyntaxError methodsFor: 'other'!
notify: error at: aLocation in: source
	"Open a syntax error view, inserting the given error message into the given source at the given location. This message is sent to the 'requestor' when the parser or compiler finds a syntax error."

	| aClass aString |
	aClass := thisContext sender receiver encoder classEncoding.
	self setClass: aClass
		code: source
		error: error
		location: aLocation
		debugger: (Smalltalk tools debugContext: thisContext)
		doitFlag: false.
	self class open: self.
! !
