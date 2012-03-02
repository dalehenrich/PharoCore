
!RxMatcher methodsFor: 'accessing'!
matchesPrefix: aString
	"Match against a string."

	^self matchesStreamPrefix: aString readStream! !
