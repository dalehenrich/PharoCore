
!PositionableStream methodsFor: '*System-Changes'!
fileInAnnouncing: announcement 
	"This is special for reading expressions from text that has been formatted 
	with exclamation delimitors. The expressions are read and passed to the 
	Compiler. Answer the result of compilation.  Put up a progress report with
     the given announcement as the title."

	| val |
	announcement 
		displayProgressFrom: 0 to: self size
		during: 
			[:bar | 
			[self atEnd] whileFalse: 
					[bar value: self position.
					self skipSeparators.
					
					[ | chunk |val := (self peekFor: $!!) 
								ifTrue: [(self class evaluatorClass evaluate: self nextChunk logged: false) scanFrom: self]
								ifFalse: 
									[chunk := self nextChunk.
									self checkForPreamble: chunk.
									self class evaluatorClass evaluate: chunk logged: true]] 
							on: InMidstOfFileinNotification
							do: [:ex | ex resume: true].
					self skipStyleChunk].
			self close].
	"Note:  The main purpose of this banner is to flush the changes file."
	Smalltalk logChange: '----End fileIn of ' , self name , '----'.
	self flag: #ThisMethodShouldNotBeThere.	"sd"
	^val! !
