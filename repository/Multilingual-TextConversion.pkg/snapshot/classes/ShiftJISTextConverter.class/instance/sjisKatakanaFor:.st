
!ShiftJISTextConverter methodsFor: 'private'!
sjisKatakanaFor: value

	^ Character value: (#(
		16rA0 16rA1 16rA2 16rA3 16rA4 16rA5 16rA6 16rA7
		16rA8 16rA9 16rAA 16rAB 16rAC 16rAD 16rAE 16rAF
		16rB0 16rB1 16rB2 16rB3 16rB4 16rB5 16rB6 16rB7
		16rB8 16rB9 16rBA 16rBB 16rBC 16rBD 16rBE 16rBF
		16rC0 16rC1 16rC2 16rC3 16rC4 16rC5 16rC6 16rC7
		16rC8 16rC9 16rCA 16rCB 16rCC 16rCD 16rCE 16rCF
		16rD0 16rD1 16rD2 16rD3 16rD4 16rD5 16rD6 16rD7
		16rD8 16rD9 16rDA 16rDB 16rDC 16rDD 16rDE 16rDF
	) at: value - 16rFF5F).

! !
