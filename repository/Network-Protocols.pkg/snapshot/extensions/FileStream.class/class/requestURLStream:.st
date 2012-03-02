
!FileStream class methodsFor: '*Network-Protocols'!
requestURLStream: url
	"FileStream requestURLStream:'http://isgwww.cs.uni-magdeburg.de/~raab'"
	^self concreteStream new requestURLStream: url! !
