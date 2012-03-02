
!ZnCookie methodsFor: 'testing'!
isInPath: urlObject
	^ urlObject pathPrintString includesSubString: self path
	! !
