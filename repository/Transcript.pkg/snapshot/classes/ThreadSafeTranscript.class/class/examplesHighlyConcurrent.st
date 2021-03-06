
!ThreadSafeTranscript class methodsFor: 'examples'!
examplesHighlyConcurrent
	"self examplesHighlyConcurrent"

	| tt length |
	Smalltalk globals at: #STranscript ifAbsent: [ self installThreadSafeAsSTranscript ].
	tt := Smalltalk globals at: #STranscript.
	tt open.
	length := 20.
	tt
		cr;
		show: 'STARTING----->'.
	length
		timesRepeat: [ 
			[ 
			"Background updates"
			[ 
			0 to: 0 + length do: [ :i | 
				tt
					nextPutAll: '[' , i printString , ']';
					nextPutAll: '*';
					flush.
				Processor yield ] ] fork.	"Background updates"
			[ 
			500 to: 500 + length do: [ :i | 
				tt
					nextPutAll: '{' , i printString , '}';
					nextPutAll: '-';
					flush.
				Processor yield ] ] fork ] fork ].	"Display updates"
	length timesRepeat: [ [ [ length timesRepeat: [ World displayWorldSafely ] fork ] ] fork ].	"Foreground updates"
	1000 to: 1000 + length do: [ :i | 
		tt show: '---' , i printString , '---'.
		Processor yield ]! !
