
!ZnClient methodsFor: 'private protocol'!
prepareRedirect
	"We implement the common behavior that POST/PUT redirects turn into GET request.
	Note also that the body data is dropped"

	self noteRedirect.
	(#(POST PUT) includes: request method)
		ifTrue: [ self method: #GET ].
	request hasEntity
		ifTrue: [ request resetEntity: nil ].
	self url: self redirectUrl! !
