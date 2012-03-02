
!Process methodsFor: 'debugging'!
debug: context title: title full: bool
	
	"duplicate but remove dependence"
	| topCtxt |
	topCtxt := self isActiveProcess ifTrue: [thisContext] ifFalse: [self suspendedContext].
	(topCtxt hasContext: context) ifFalse: [^ self error: 'context not in self'].
	
	Smalltalk tools debugger
						openOn: self 
						context: context 
						label: title 
						contents: nil 
						fullView: bool.
						! !
