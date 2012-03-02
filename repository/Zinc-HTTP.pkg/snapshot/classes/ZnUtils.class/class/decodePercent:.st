
!ZnUtils class methodsFor: 'conversions'!
decodePercent: string
	^ [ string unescapePercents ]
		on: Error 
		do: [ (ZnPercentEncodingWrong string: string) signal ]  ! !
