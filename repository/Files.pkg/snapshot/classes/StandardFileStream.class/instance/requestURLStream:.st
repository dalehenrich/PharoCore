
!StandardFileStream methodsFor: 'browser requests'!
requestURLStream: url
	"FileStream requestURLStream:'http://www.pharo-project.org'"
	^self requestURLStream: url ifError:[nil]! !
