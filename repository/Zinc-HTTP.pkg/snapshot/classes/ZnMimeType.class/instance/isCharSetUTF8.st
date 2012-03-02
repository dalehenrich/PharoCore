
!ZnMimeType methodsFor: 'testing'!
isCharSetUTF8
	^ self charSet notNil and: [ self charSet sameAs: 'utf-8' ]! !
