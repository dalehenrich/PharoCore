
!MCHttpRepository methodsFor: 'actions'!
urlForFileNamed: aString
	^ self locationWithTrailingSlash, aString encodeForHTTP! !
