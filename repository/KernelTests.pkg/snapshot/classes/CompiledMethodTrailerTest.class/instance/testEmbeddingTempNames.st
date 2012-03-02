
!CompiledMethodTrailerTest methodsFor: 'tests'!
testEmbeddingTempNames

	| trailer newTrailer code |
	
	trailer := CompiledMethodTrailer new.
	
	code := 'foo'.
	trailer tempNames: code.
	newTrailer := trailer testEncoding.
	
	self assert: (trailer kind == #TempsNamesQCompress ).
	self assert: (newTrailer tempNames = code).
	"the last bytecode index must be at 0"
	self assert: (newTrailer endPC = 0).
	

	code := 'testEmbeddingSourceCode

	| trailer newTrailer code |
	
	trailer := CompiledMethodTrailer new.
	
	trailer sourceCode: code.
	newTrailer := trailer testEncoding.
	
	self assert: (newTrailer sourceCode = code).'.

	trailer tempNames: code.
	self assert: (trailer kind == #TempsNamesZip ).
	newTrailer := trailer testEncoding.
	
	self assert: (newTrailer tempNames = code).
	"the last bytecode index must be at 0"
	self assert: (newTrailer endPC = 0).
! !
