
!ProtocolBrowser class methodsFor: 'instance creation'!
openFullProtocolForClass: aClass 
	"Create and schedule a browser for the entire protocol of the class."
	"ProtocolBrowser openFullProtocolForClass: ProtocolBrowser."
	| aPBrowser label |
	aPBrowser := self new on: aClass.
	label := 'Entire protocol of: ', aClass name.
	self open: aPBrowser name: label! !
