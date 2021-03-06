
!CommandLineUIManager methodsFor: 'ui requests'!
syntaxErrorNotificationDefaultAction: aSyntaxErrorNotification
	"log the syntax notificaiton and print a nicely formatted and colored syntax error on stderr"
	| contents position errorMessage lineNumber maxLineNumberSize errorLine |
	
	"log the error"
	Smalltalk logDuring: [ :logger |
		logger print: aSyntaxErrorNotification; cr.
		aSyntaxErrorNotification signalerContext errorReportOn: logger ].
	
	"format the error"
	position := aSyntaxErrorNotification location.
	contents := aSyntaxErrorNotification errorCode.
	errorLine := contents lineNumberCorrespondingToIndex: position.
		
	"first gather the error title to be able to underline it properly"
	errorMessage := String streamContents: [ :s|
		s nextPutAll: 'Syntax Error on line '; 
			print: errorLine; nextPutAll: ': '; 
			print: aSyntaxErrorNotification errorMessage].
	
	self logRedDuring: [ :s|
		s nextPutAll: errorMessage; cr;
			nextPutAll: ('' padded: #left to: errorMessage size with: $=); cr].
	
	"print each source line and mark the found syntax error"
	maxLineNumberSize := (contents lines size) asString size.
	lineNumber := 0.
	contents lineIndicesDo: [:start :endWithoutDelimiters :end |
		lineNumber := lineNumber + 1.
		self logColored:  (lineNumber == errorLine ifTrue:['31'] ifFalse:['33']) during: [ :s|
			"0 pad the line numbers to the same size"
			s nextPutAll: ( lineNumber asString padded: #left to: maxLineNumberSize with: $0); nextPutAll: ': ' ].
		
		self stderr nextPutAll: (contents copyFrom: start to: endWithoutDelimiters); cr.
		"print the marker under the error line"
		(lineNumber == errorLine) ifTrue: [
			self logRedDuring: [ :s|
				s nextPutAll:( '_^_' padded: #left to: position - start + maxLineNumberSize + 4 with: $ ); cr]]].
			
	"in noninteractive mode simply quit"
	^ self quit! !
