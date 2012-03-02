
!ToolRegistry methodsFor: '*deprecated14'!
interrupt: aProcess label: aString
	"Open a debugger on the given process and context."
	self deprecated: 'Use Smalltalk tools debugger then a specific protocol like openInterrupt:onProcess:' on: '22 January 2012' in: 'Pharo1.4'.
	self using: #debugger do: [:tool | 
		tool openInterrupt: aString onProcess: aProcess
		]
! !
