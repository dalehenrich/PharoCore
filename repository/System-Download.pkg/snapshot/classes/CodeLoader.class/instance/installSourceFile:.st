
!CodeLoader methodsFor: 'installing'!
installSourceFile: aRequest
	"Install the previously loaded source file"
	| contents aStream|
	
	aStream := aRequest contentStream.
	aStream ifNil:[^self error: ('No loadable file at ', aRequest url)].
	
	contents := aStream ascii upToEnd unzipped.
	(aStream respondsTo: #close) ifTrue:[aStream close].
	
	[ ^ (RWBinaryOrTextStream with: contents) reset fileIn ]
		on: SyntaxErrorNotification 
		do: [ :e| 
			self printSyntaxNotification: e request: aRequest.
			e defaultAction].! !
