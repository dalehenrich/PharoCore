
!TTFontReader class methodsFor: 'initialization'!
fileReaderServicesForFile: fullName suffix: suffix


	^(suffix = 'fnt')  | (suffix = '*') 
		ifTrue: [ self services]
		ifFalse: [#()]
! !