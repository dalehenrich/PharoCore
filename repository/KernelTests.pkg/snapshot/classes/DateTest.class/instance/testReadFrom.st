
!DateTest methodsFor: 'Tests'!
testReadFrom
	"self debug: #testReadFrom"
	| s1 s2 s3 s4 s5 | 
	s1 := '2 June 1973'.
	s2 := '2-JUN-73'.
	s3 := 'June 2, 1973'.
	s4 := '6/2/73'.
	s5 := '2JUN73'.

	self	
		assert: date = (self dateClass readFrom: s1 readStream);
		assert: date = (self dateClass readFrom: s2 readStream);
		assert: date = (self dateClass readFrom: s3 readStream);
		assert: date = (self dateClass readFrom: s4 readStream);
		assert: date = (self dateClass readFrom: s5 readStream).! !
