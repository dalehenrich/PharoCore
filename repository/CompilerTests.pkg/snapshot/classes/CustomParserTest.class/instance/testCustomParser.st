
!CustomParserTest methodsFor: 'tests'!
testCustomParser
	"Test whether the compiler uses a custom parser class to parse the source code. This custom parser class is answered by the   class side #parserClass message, instead of default one"
	"self debug: #testCustomParser"
	
	| compiler result |
	compiler := self class compilerClass new.

	"let compiler initialize its class ivar"
	result := compiler parse: ' a ^1 + 1' in: self class notifying: nil.
	
	self assert: compiler parserClass == MockCustomParser
	! !
