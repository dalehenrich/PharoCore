
!MIMELocalFileDocument methodsFor: 'accessing'!
content
	^contents ifNil:[contents := contentStream contentsOfEntireFile].! !
