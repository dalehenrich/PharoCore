
!CompilerTest methodsFor: 'running'!
tearDown
	Smalltalk globals at: #Transcript put: originalTranscript.
	
	! !
