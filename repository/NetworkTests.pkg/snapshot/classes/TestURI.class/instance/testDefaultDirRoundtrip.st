
!TestURI methodsFor: 'running file'!
testDefaultDirRoundtrip
	"self debug:#testDefaultDirRoundtrip"
	
	| defaultDir defaultDirURI uriDir |
	defaultDir := FileDirectory default.
	defaultDirURI := defaultDir uri.
	uriDir := FileDirectory uri: defaultDirURI.
	self assert: (defaultDir fullName = uriDir fullName)! !
