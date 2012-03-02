
!HostSystemMenusMacOSX methodsFor: 'translation'!
buildDataStringForAppendOrInsert: aCollection
	| first str icon mark style cmd |

	first := true.
	str := (String new: 80) writeStream.
	aCollection do: [:m |
		first ifFalse: [str nextPutAll: ';'].
		first ifTrue: [first := false].
		str nextPutAll: m text.
		(icon := m icon) ifNotNil: [str nextPutAll: '^';nextPutAll: icon printString].
		(mark := m mark) ifNotNil: [str nextPutAll: '!!';nextPut: mark asCharacter].
		(style := m style) ifNotNil: [str nextPutAll: (self resolveStyle: style)].
		(cmd := m cmd) ifNotNil: [str nextPutAll: '/';nextPut: cmd].
		m disabled ifTrue: [str nextPutAll: '('].
		].
	^self convertToStr255: str contents.
	! !
