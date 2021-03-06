
!Time class methodsFor: 'general inquiries'!
namesForTimes: arrayOfSeconds
	| simpleEnglish final prev |
	"Return English descriptions of the times in the array.  They are each seconds since 1901.  If two names are the same, append the date and time to distinguish them."

	simpleEnglish := arrayOfSeconds collect: [:secsAgo |
		self humanWordsForSecondsAgo: self totalSeconds - secsAgo].
	prev := ''.
	final := simpleEnglish copy.
	simpleEnglish withIndexDo: [:eng :ind | | myPair prevPair | 
		eng = prev ifFalse: [eng]
			ifTrue: ["both say 'a month ago'"
				prevPair := self dateAndTimeFromSeconds: 
						(arrayOfSeconds at: ind-1).
				myPair := self dateAndTimeFromSeconds: 
						(arrayOfSeconds at: ind).
				(final at: ind-1) = prev ifTrue: ["only has 'a month ago'"
					final at: ind-1 put: 
							(final at: ind-1), ', ', prevPair first mmddyyyy].
				final at: ind put: 
							(final at: ind), ', ', myPair first mmddyyyy.
				prevPair first = myPair first 
					ifTrue: [
						(final at: ind-1) last == $m ifFalse: ["date but no time"
							final at: ind-1 put: 
								(final at: ind-1), ', ', prevPair second printMinutes].
						final at: ind put: 
							(final at: ind), ', ', myPair second printMinutes]].
		prev := eng].
	^ final! !
