
!ScriptLoader class methodsFor: 'loadscripts'!
gofer
	^ Smalltalk globals
		at: #Gofer
		ifAbsent: [ 
			(self new)
				installGofer;
				gofer ]! !
