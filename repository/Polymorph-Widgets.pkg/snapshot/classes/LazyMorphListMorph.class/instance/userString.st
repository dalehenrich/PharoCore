
!LazyMorphListMorph methodsFor: 'as yet unclassified'!
userString
	"Do I have a text string to be searched on?"

	
	^ String streamContents: [:strm | | usm |
		1 to: self getListSize do: [:i |
			usm := (self getListItem: i) submorphs detect: [:m | m userString notNil] ifNone: [].
			strm nextPutAll: (usm ifNil: [''] ifNotNil: [usm userString]); cr]]! !
