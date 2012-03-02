
!DateTest methodsFor: 'Running'!
setUp

	date := self dateClass newDay: 153 year: 1973.	"2 June 1973"

	aDate := Date readFrom: '01-23-2004' readStream.
	aTime := Time readFrom: '12:34:56 pm' readStream! !
